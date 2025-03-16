import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mychat/bubble_obj.dart';

@NowaGenerated({'auto-width': 2000.0, 'auto-height': 134.0})
class ChatBubble extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChatBubble({this.chatText = const BubbleObj(isUser: true), super.key});

  final BubbleObj? chatText;

  @override
  State<ChatBubble> createState() {
    return _ChatBubbleState();
  }
}

@NowaGenerated()
class _ChatBubbleState extends State<ChatBubble> {
  String chatIcon = 'assets/helpchat_head.png';

  Widget var1 = const Image(
    image: NetworkImage(
        'https://canary.contestimg.wish.com/api/webimage/5ddccb3c9a6f6e1cf8d7dd65-large.jpg?cache_buster=114b2b0b5893a0e736412075646fa5da'),
    fit: BoxFit.cover,
  );

  Color? createColor() {
    if (widget.chatText!.isUser!) {
      return const Color(0xffefeded);
    } else {
      return const Color(0xffb5e2ff);
    }
  }

  ShapeBorder? createBorder() {
    if (widget.chatText!.isUser!) {
      return const RoundedRectangleBorder(
          side: BorderSide(color: Color(0xffefeded), width: 10.0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(0.0),
          ));
    } else {
      return const RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff63dcfa), width: 1.0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(10.0),
          ));
    }
    return const RoundedRectangleBorder(
        side: BorderSide(color: Color(0xff3096c6), width: 1.0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(10.0),
        ));
  }

  String createText() {
    if (widget.chatText!.isUser!) {
      return 'You';
    } else {
      return 'Help Chat';
    }
    return 'Help Chat';
  }

  String createAsset() {
    if (widget.chatText!.isUser!) {
      return 'assets/humanpro.png';
    } else {
      return 'assets/helpchat_head.png';
    }
    return chatIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 0.0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FlexSizedBox(
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 0.0,
            children: [
              FlexSizedBox(
                height: 39.0,
                child: Material(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff39477f), width: 1.0),
                      borderRadius: BorderRadius.circular(50.0)),
                  color: const Color(0xff122b51),
                  elevation: 3.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 5.0,
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    child: Image(
                      image: AssetImage(createAsset()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              FlexSizedBox(
                width: null,
                height: null,
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    createText(),
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Color(0xfff5f5f5)),
                  ),
                ),
              )
            ],
          ),
        ),
        FlexSizedBox(
          width: null,
          height: null,
          child: Material(
            shape: createBorder(),
            color: createColor(),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Markdown(
                widget.chatText!.message!,
              ),
            ),
          ),
        )
      ],
    );
  }
}
