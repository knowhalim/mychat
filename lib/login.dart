import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mychat/api/aieapi.api.dart';
import 'package:mychat/main.dart';
import 'package:mychat/chat.dart';

@NowaGenerated()
class Login extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Login({super.key});

  @override
  State<Login> createState() {
    return _LoginState();
  }
}

@NowaGenerated()
class _LoginState extends State<Login> {
  bool? showStatus = false;

  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 29.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0x00c4c4c4),
                    borderRadius: BorderRadius.circular(0.0)),
              ),
            ),
            const FlexSizedBox(
              width: 100.0,
              height: 100.0,
              child: Image(
                image: AssetImage('assets/helpchat_head.png'),
                fit: BoxFit.cover,
              ),
            ),
            FlexSizedBox(
              width: null,
              height: null,
              child: Visibility(
                visible: showStatus!,
                child: const Text(
                  'Logging in..',
                  style: TextStyle(color: Color(0xffebecff)),
                ),
              ),
            ),
            FlexSizedBox(
              width: 246.0,
              height: null,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: const BorderSide()),
                  hintText: 'Username',
                ),
                controller: username,
              ),
            ),
            FlexSizedBox(
              width: 246.0,
              height: null,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: const BorderSide()),
                  hintText: 'Password',
                ),
                controller: password,
                obscureText: true,
              ),
            ),
            FlexSizedBox(
              width: 244.0,
              height: null,
              child: GestureDetector(
                onTap: () {
                  Aieapi()
                      .LoginUser(
                          username: username.text, password: password.text)
                      .then((value) {
                    sharedPrefs.setString('userToken', value!.token!);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Chat()));
                    setState(() {});
                  }, onError: (error) {
                    print(error!);
                  });
                  setState(() {});
                },
                child: Material(
                  color: const Color(0xff223d62),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xffcacaca), width: 1.0),
                      borderRadius: BorderRadius.circular(9.0)),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Color(0xffffffff)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
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
