import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:secry/domain/chats/general_chat_info.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/general/groups_and_general_about_info.dart';
import 'package:secry/domain/general/pagination_info.dart';
import 'package:secry/domain/groups/i_groups_repository.dart';
import 'package:secry/domain/surveys/general_survey_info.dart';
import 'package:secry/infrastructure/groups/groups_api_service.dart';
import 'package:secry/util/network_and_requests/response_util.dart';

import 'package:secry/domain/groups/new_group.dart';
import 'package:secry/domain/groups/group_chats_and_surveys_general_info.dart';

@Singleton(as: IGroupsRepository)
class GroupsRepository extends IGroupsRepository {
  final GroupsApiService _groupsApiService;

  GroupsRepository(this._groupsApiService) : super();

  @override
  Future<List<GroupOverviewRowInfo>> getHomepageGroupsDummyData() async {
    try {
      final response = await _groupsApiService.api.getHomepageGroupsDummyData();

      if (response.isSuccessful) {
        final List<GroupOverviewRowInfo> groupOverviewRowsData =
            (json.decode(response.data) as List).map((json) => GroupOverviewRowInfo.fromJsonMap(json)).toList();
        return groupOverviewRowsData;
      } else {
        return List.empty();
      }
    } catch (error) {
      print(error);
      return List.empty();
    }
  }

  @override
  Future<GroupChatsAndSurveysGeneralInfo?> getHomepageGroupOverviewDummyData() async {
    try {
      final response = await _groupsApiService.api.getHomepageGroupOverviewDummyData();

      if (response.isSuccessful) {
        final mappedData = json.decode(response.data) as Map<String, dynamic>;

        if (!mappedData.containsKey('id')) {
          return null;
        }

        List<GeneralChatInfo> generalChatInfoData = [];
        List<GeneralSurveyInfo> generalSurveyInfoData = [];

        final String groupId = mappedData.containsKey('id') ? (mappedData['id'] != null ? mappedData['id'] : '') : '';
        final String groupTitle =
            mappedData.containsKey('title') ? (mappedData['title'] != null ? mappedData['title'] : '') : '';
        final String groupImageUrl =
            mappedData.containsKey('imageUrl') ? (mappedData['imageUrl'] != null ? mappedData['imageUrl'] : '') : '';
        final DateTime? groupCreatedAt = mappedData.containsKey('createdAt')
            ? (mappedData['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(mappedData['createdAt']) : null)
            : null;

        if (mappedData.containsKey('chats')) {
          List<dynamic> chats = mappedData["chats"];
          generalChatInfoData = (chats).map((json) => GeneralChatInfo.fromJsonMap(json)).toList();
        }

        if (mappedData.containsKey('surveys')) {
          List<dynamic> surveys = mappedData["surveys"];
          generalSurveyInfoData = (surveys).map((json) => GeneralSurveyInfo.fromJsonMap(json)).toList();
        }

        final groupChatsAndSurveysGeneralInfo = GroupChatsAndSurveysGeneralInfo(
            id: groupId,
            title: groupTitle,
            imageUrl: groupImageUrl,
            createdAt: groupCreatedAt,
            chats: generalChatInfoData,
            surveys: generalSurveyInfoData);
        return groupChatsAndSurveysGeneralInfo;
      } else {
        return null;
      }
    } catch (error) {
      print(error);
      return null;
    }
  }

  @override
  Future<GroupsAndGeneralAboutInfo> getPrivateGroups({required int pageNumber, required int pageSize}) async {
    try {
      final token = await FirebaseAuth.instance.currentUser?.getIdToken();
      if (token == null && token != "") {
        // TODO handle not logged in error and show on homepage
        return GroupsAndGeneralAboutInfo(paginationInfo: null, groups: []);
      }
      final bearerToken = "Bearer $token";

      final response = await _groupsApiService.api.getPrivateGroups(bearerToken, pageNumber, pageSize);

      if (response.isSuccessful) {
        final mappedData = Map<String, dynamic>.from(response.data);

        if (mappedData.containsKey('items')) {
          List<dynamic> groups = mappedData["items"];
          final List<GroupOverviewRowInfo> groupOverviewRowsData =
              (groups).map((json) => GroupOverviewRowInfo.fromJsonMap(json)).toList();

          // TODO use json.fromFactoryMap instead of all single map functions
          final int pageNumber = mappedData.containsKey('pageNumber')
              ? (mappedData['pageNumber'] != null ? mappedData['pageNumber'] : 1)
              : 1;
          final int totalPages = mappedData.containsKey('totalPages')
              ? (mappedData['totalPages'] != null ? mappedData['totalPages'] : 1)
              : 1;
          final int totalAmountOfGroups = mappedData.containsKey('totalCount')
              ? (mappedData['totalCount'] != null ? mappedData['totalCount'] : 10)
              : 10;
          final bool hasPreviousPage = mappedData.containsKey('hasPreviousPage')
              ? (mappedData['hasPreviousPage'] != null ? mappedData['hasPreviousPage'] : false)
              : false;
          final bool hasNextPage = mappedData.containsKey('hasNextPage')
              ? (mappedData['hasNextPage'] != null ? mappedData['hasNextPage'] : false)
              : false;
          final generalGroupInfo = PaginationInfo(
              pageNumber: pageNumber,
              pageSize: defaultPageSize,
              totalPages: totalPages,
              totalCount: totalAmountOfGroups,
              hasPreviousPage: hasPreviousPage,
              hasNextPage: hasNextPage);

          final groupsAndGeneralAboutInfo =
              GroupsAndGeneralAboutInfo(paginationInfo: generalGroupInfo, groups: groupOverviewRowsData);

          return groupsAndGeneralAboutInfo;
        } else {
          return GroupsAndGeneralAboutInfo(paginationInfo: null, groups: []);
        }
      } else {
        return GroupsAndGeneralAboutInfo(paginationInfo: null, groups: []);
      }
    } catch (error) {
      // TODO log error
      return GroupsAndGeneralAboutInfo(paginationInfo: null, groups: []);
    }
  }

  Future<bool> createNewGroup(NewGroup group) async {
    try {
      final token = await FirebaseAuth.instance.currentUser?.getIdToken();
      if (token == null && token != "") {
        // TODO handle not logged in error and show on homepage
        return false;
      }

      final bearerToken = "Bearer $token";
      final body = jsonEncode(group.toJson());

      final response = await _groupsApiService.api.createNewGroup(bearerToken, body);

      if (response.isSuccessful) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      // TODO log error
      return false;
    }
  }

  Future<GroupChatsAndSurveysGeneralInfo?> getChatsAndSurveys({required String groupId}) async {
    try {
      final token = await FirebaseAuth.instance.currentUser?.getIdToken();
      if (token == null && token != "") {
        // TODO handle not logged in error and show on homepage
        return null;
      }

      final bearerToken = "Bearer $token";
      final response =
          await _groupsApiService.api.getGroupChatsAndSurveysWithGeneralGroupInfo(groupId, bearerToken, groupId);

      if (response.isSuccessful) {
        final mappedData = Map<String, dynamic>.from(response.data);

        if (!mappedData.containsKey('id')) {
          return null;
        }

        List<GeneralChatInfo> generalChatInfoData = [];
        List<GeneralSurveyInfo> generalSurveyInfoData = [];

        final String groupId = mappedData.containsKey('id') ? (mappedData['id'] != null ? mappedData['id'] : '') : '';
        final String groupTitle =
            mappedData.containsKey('title') ? (mappedData['title'] != null ? mappedData['title'] : '') : '';
        final String groupImageUrl =
            mappedData.containsKey('imageUrl') ? (mappedData['imageUrl'] != null ? mappedData['imageUrl'] : '') : '';
        final DateTime? groupCreatedAt = mappedData.containsKey('createdAt')
            ? (mappedData['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(mappedData['createdAt']) : null)
            : null;

        if (mappedData.containsKey('chats')) {
          List<dynamic> chats = mappedData["chats"];
          generalChatInfoData = (chats).map((json) => GeneralChatInfo.fromJsonMap(json)).toList();
        }

        if (mappedData.containsKey('surveys')) {
          List<dynamic> surveys = mappedData["surveys"];
          generalSurveyInfoData = (surveys).map((json) => GeneralSurveyInfo.fromJsonMap(json)).toList();
        }

        final groupChatsAndSurveysGeneralInfo = GroupChatsAndSurveysGeneralInfo(
            id: groupId,
            title: groupTitle,
            imageUrl: groupImageUrl,
            createdAt: groupCreatedAt,
            chats: generalChatInfoData,
            surveys: generalSurveyInfoData);
        return groupChatsAndSurveysGeneralInfo;
      } else {
        return null;
      }
    } catch (error) {
      // TODO log error
      return null;
    }
  }
}
