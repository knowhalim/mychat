import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class ChatBotModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChatBotModel({this.success, this.data, this.extra});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory ChatBotModel.fromJson({required Map<String, dynamic> json}) {
    return ChatBotModel(
      success: json['success'],
      data: json['data'],
      extra: Extra.fromJson(json: json['extra'] ?? {}),
    );
  }

  final bool? success;

  final String? data;

  final Extra? extra;

  @NowaGenerated({'loader': 'auto-copy-with'})
  ChatBotModel copyWith({bool? success, String? data, Extra? extra}) {
    return ChatBotModel(
      success: success ?? this.success,
      data: data ?? this.data,
      extra: extra ?? this.extra,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'data': data,
      'extra': extra?.toJson(),
    };
  }
}

@NowaGenerated()
class Extra {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Extra({this.actions, this.chatId});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Extra.fromJson({required Map<String, dynamic> json}) {
    return Extra(actions: json['actions'], chatId: json['chatId']);
  }

  final List<dynamic>? actions;

  final String? chatId;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Extra copyWith({List<dynamic>? actions, String? chatId}) {
    return Extra(
        actions: actions ?? this.actions, chatId: chatId ?? this.chatId);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'actions': actions, 'chatId': chatId};
  }
}
