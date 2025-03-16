import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'dart:async';
import 'package:mychat/login.dart';
import 'package:mychat/chat.dart';
import 'package:mychat/main.dart';

@NowaGenerated()
class HomePage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

@NowaGenerated()
class _HomePageState extends State<HomePage> {
  String? getToken() {
    final var1 = sharedPrefs.getString('userToken');
    return var1;
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (getToken() == null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Login()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Chat()));
      }
      setState(() {});
    });
  }

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
              height: 275.0,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0x00c4c4c4),
                    borderRadius: BorderRadius.circular(0.0)),
              ),
            ),
            const FlexSizedBox(
              width: 164.0,
              height: 153.0,
              child: Image(
                image: AssetImage('assets/helpchat.png'),
                fit: BoxFit.cover,
              ),
            ),
            FlexSizedBox(
              width: 200.0,
              height: null,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(0.0),
                backgroundColor: const Color(0xff6cb5dc),
                color: const Color(0xff132c52),
              ),
            ),
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0x00c4c4c4),
                    borderRadius: BorderRadius.circular(0.0)),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xff132b51),
    );
  }
}
