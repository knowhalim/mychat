import 'package:flutter/material.dart';
import 'package:mychat/bubble_obj.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mychat/yeslogout.dart';
import 'package:mychat/main.dart';
import 'package:mychat/chat_bubble.dart';
import 'package:mychat/api/aieapi.api.dart';

@NowaGenerated({'auto-width': 398.0})
class Chat extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Chat({super.key});

  @override
  State<Chat> createState() {
    return _ChatState();
  }
}

@NowaGenerated()
class _ChatState extends State<Chat> {
  String humanHead = 'assets/humanpro.png';

  String robotHead = 'assets/helpchat_head.png';

  List<BubbleObj>? listOfBubbles = [
    const BubbleObj(
        isUser: false, message: 'Hi, I am your AI Counsellor. Let\'s talk!')
  ];

  TextEditingController userMsg = TextEditingController();

  bool? showSend = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 10.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: ListView.separated(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                shrinkWrap: false,
                reverse: true,
                itemCount: listOfBubbles!.length,
                itemBuilder: (context, index) {
                  final BubbleObj element = listOfBubbles![index];
                  return SizedBox(
                    width: null,
                    height: null,
                    child: ChatBubble(
                      chatText: BubbleObj(
                          message: element.message, isUser: element.isUser),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                  width: 20.0,
                ),
              ),
            ),
            FlexSizedBox(
              width: double.infinity,
              height: 92.0,
              child: Material(
                color: const Color(0xff111f38),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: Row(
                    spacing: 15.0,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlexSizedBox(
                        height: 60.0,
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          maxLines: 9,
                          controller: userMsg,
                        ),
                      ),
                      FlexSizedBox(
                        width: null,
                        height: null,
                        child: Visibility(
                          visible: showSend!,
                          replacement: const CircularProgressIndicator(),
                          child: IconButton(
                            onPressed: () {},
                            icon: GestureDetector(
                              onTap: () {
                                showSend = false;
                                listOfBubbles?.insert(
                                    0,
                                    BubbleObj(
                                        message: userMsg.text, isUser: true));
                                print(userMsg.text);
                                Aieapi()
                                    .chatBot(
                                  token: token(),
                                  chatId: getChatId(),
                                  botId: 'counsellor',
                                  prompt: userMsg.text,
                                )
                                    .then((value) {
                                  showSend = true;
                                  listOfBubbles?.insert(
                                      0, BubbleObj(message: value?.data));
                                  sharedPrefs.setString(
                                      'chatId', value!.extra!.chatId!);
                                  setState(() {});
                                }, onError: (error) {
                                  print(error!);
                                  print('Hello World');
                                });
                                userMsg.text = '';
                                setState(() {});
                              },
                              child: Material(
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Color(0xff000000), width: 1.0),
                                    borderRadius: BorderRadius.circular(50.0)),
                                color: const Color(0xff3096c6),
                                elevation: 3.0,
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  child: Icon(
                                    IconData(
                                      58737,
                                      fontFamily: 'MaterialIcons',
                                      matchTextDirection: true,
                                    ),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xff132b51),
      appBar: AppBar(
        title: SizedBox(
          width: 50.0,
          child: Material(
            color: const Color(0xff132b51),
            elevation: 2.0,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xff02102a), width: 1.0),
                borderRadius: BorderRadius.circular(50.0)),
            child: const Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Image(
                image: AssetImage('assets/helpchat_head.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xff0c2243),
        centerTitle: true,
        elevation: 3.0,
        shadowColor: const Color(0xff251919),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                builder: createBuilder(),
                useRootNavigator: false,
                context: context,
                anchorPoint: const Offset(0.0, 0.0),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Icon(
                IconData(58291, fontFamily: 'MaterialIcons'),
                color: Color(0xff3263cd),
              ),
            ),
          )
        ],
      ),
    );
  }

  void func() {}

  String? token() {
    final var1 = sharedPrefs.getString('userToken');
    return var1;
  }

  String? getChatId() {
    return sharedPrefs.getString('chatId') ?? '';
  }

  Widget Function(BuildContext context) createBuilder() {
    return (context) => AlertDialog(
          title: const Text(
            'Do you want to logout?',
          ),
          actions: [create0()],
        );
  }

  Widget create0() {
    return const Yeslogout();
  }
}
