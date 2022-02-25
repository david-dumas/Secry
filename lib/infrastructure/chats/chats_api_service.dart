import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/chats/i_chats_api_service.dart';

@singleton
class ChatsApiService {
  final Dio _dio;
  late final IChatsApiService api;

  ChatsApiService(
    this._dio,
  ) {
    api = IChatsApiService(_dio);
  }
}
