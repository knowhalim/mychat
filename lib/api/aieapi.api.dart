import 'package:dio/dio.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mychat/models/chat_bot_model1.dart';
import 'package:mychat/models/login_user_model.dart';

@NowaGenerated({'editor': 'api'})
class Aieapi {
  factory Aieapi() {
    return _instance;
  }

  Aieapi._();

  static final Aieapi _instance = Aieapi._();

  final Dio _dioClient =
      Dio(BaseOptions(baseUrl: 'https://thebluehat.com/wp-json/', headers: {}));

  @NowaGenerated({'loader': 'api_client_getter'})
  Dio get dioClient {
    return _dioClient;
  }

  Future<LoginUserModel?> LoginUser(
      {String? username = '', String? password = ''}) async {
    final Response res = await dioClient.post('aiechat/v1/token',
        data:
            '{\n    "username":"${username}",\n    "password":"${password}"\n}');
    return LoginUserModel.fromJson(json: res.data!);
  }

  Future<ChatBotModel1?> chatBot(
      {String? token = '',
      String? chatId = '',
      String? botId = '',
      String? prompt = ''}) async {
    final Response res = await dioClient.post(
      'mwai/v1/simpleChatbotQuery',
      options: Options(headers: {
        'Authorization': '${token}',
        'Accept': '*/*',
        'Connection': 'keep-alive',
      }),
      data:
          '{\n    "prompt": "${prompt}",\n    "botId": "${botId}",\n    "chatId": "${chatId}"\n}',
    );
    return ChatBotModel1.fromJson(json: res.data!);
  }
}
