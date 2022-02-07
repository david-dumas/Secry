import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/groups/i_groups_api_service.dart';

@singleton
class GroupsApiService {
  final Dio _dio;
  late final IGroupsApiService api;

  GroupsApiService(
    this._dio,
  ) {
    api = IGroupsApiService(_dio);
  }
}
