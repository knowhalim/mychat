import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class ChatBotModel1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChatBotModel1({this.success, this.data, this.extra});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory ChatBotModel1.fromJson({required Map<String, dynamic> json}) {
    return ChatBotModel1(
      success: json['success'],
      data: json['data'],
      extra: Extra1.fromJson(json: json['extra'] ?? {}),
    );
  }

  final bool? success;

  final String? data;

  final Extra1? extra;

  @NowaGenerated({'loader': 'auto-copy-with'})
  ChatBotModel1 copyWith({bool? success, String? data, Extra1? extra}) {
    return ChatBotModel1(
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
class Extra1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Extra1({this.actions, this.chatId});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Extra1.fromJson({required Map<String, dynamic> json}) {
    return Extra1(actions: json['actions'], chatId: json['chatId']);
  }

  final List<dynamic>? actions;

  final String? chatId;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Extra1 copyWith({List<dynamic>? actions, String? chatId}) {
    return Extra1(
        actions: actions ?? this.actions, chatId: chatId ?? this.chatId);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'actions': actions, 'chatId': chatId};
  }
}
