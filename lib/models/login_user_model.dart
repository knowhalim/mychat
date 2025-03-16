import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class LoginUserModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LoginUserModel(
      {this.success,
      this.token,
      this.userId,
      this.userEmail,
      this.userNicename,
      this.expiresIn});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory LoginUserModel.fromJson({required Map<String, dynamic> json}) {
    return LoginUserModel(
      success: json['success'],
      token: json['token'],
      userId: json['user_id'],
      userEmail: json['user_email'],
      userNicename: json['user_nicename'],
      expiresIn: json['expires_in'],
    );
  }

  final bool? success;

  final String? token;

  @NowaGenerated({'key': 'user_id'})
  final int? userId;

  @NowaGenerated({'key': 'user_email'})
  final String? userEmail;

  @NowaGenerated({'key': 'user_nicename'})
  final String? userNicename;

  @NowaGenerated({'key': 'expires_in'})
  final int? expiresIn;

  @NowaGenerated({'loader': 'auto-copy-with'})
  LoginUserModel copyWith(
      {bool? success,
      String? token,
      int? userId,
      String? userEmail,
      String? userNicename,
      int? expiresIn}) {
    return LoginUserModel(
      success: success ?? this.success,
      token: token ?? this.token,
      userId: userId ?? this.userId,
      userEmail: userEmail ?? this.userEmail,
      userNicename: userNicename ?? this.userNicename,
      expiresIn: expiresIn ?? this.expiresIn,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'token': token,
      'user_id': userId,
      'user_email': userEmail,
      'user_nicename': userNicename,
      'expires_in': expiresIn,
    };
  }
}
