import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/chats/i_chats_repository.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';

import 'chats_api_service.dart';

@Singleton(as: IChatsRepository)
class ChatsRepository extends IChatsRepository {
  final ChatsApiService _chatsApiService;

  ChatsRepository(this._chatsApiService) : super();

  @override
  Future<List<GroupOverviewRowInfo>> getMostRecentChatsForGroup({required String groupId}) async {
    try {
      final response = await _chatsApiService.api.getMostRecentPrivateChatsForGroup();
      final responseStatusCode = response.response.statusCode;

      if (responseStatusCode == 200) {
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
}
