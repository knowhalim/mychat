import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class BubbleObj {
  @NowaGenerated({'loader': 'auto-constructor'})
  const BubbleObj({this.message = '', this.isUser = false});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory BubbleObj.fromJson({required Map<String, dynamic> json}) {
    return BubbleObj(
        message: json['message'] ?? '', isUser: json['isUser'] ?? false);
  }

  final String? message;

  final bool? isUser;

  @NowaGenerated({'loader': 'auto-copy-with'})
  BubbleObj copyWith({String? message, bool? isUser}) {
    return BubbleObj(
        message: message ?? this.message, isUser: isUser ?? this.isUser);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'message': message, 'isUser': isUser};
  }
}
