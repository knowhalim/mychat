import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mychat/chat_bubble.dart';

@NowaGenerated()
class Empty extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Empty({super.key});

  @override
  State<Empty> createState() {
    return _EmptyState();
  }
}

@NowaGenerated()
class _EmptyState extends State<Empty> {
  TextEditingController text1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 0.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                reverse: true,
                children: [
                  const SizedBox(
                    width: null,
                    height: null,
                    child: ChatBubble(),
                  )
                ],
              ),
            ),
            FlexSizedBox(
              width: double.infinity,
              height: null,
              child: Material(
                color: const Color(0xff111f38),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: Row(
                    spacing: 0.0,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlexSizedBox(
                        width: 301.0,
                        height: 60.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          maxLines: 9,
                          controller: text1,
                        ),
                      ),
                      FlexSizedBox(
                        width: null,
                        height: null,
                        child: IconButton(
                          onPressed: () {},
                          icon: Material(
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
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Title',
        ),
      ),
      backgroundColor: const Color(0xff132b51),
    );
  }
}
