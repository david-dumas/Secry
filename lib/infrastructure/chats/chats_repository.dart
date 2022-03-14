import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/chats/i_chats_repository.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';

import 'chats_api_service.dart';

@Singleton(as: IChatsRepository)
class ChatsRepository extends IChatsRepository {
  final ChatsApiService _chatsApiService;

  ChatsRepository(this._chatsApiService) : super();
}
