import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mychat/main.dart';
import 'package:mychat/login.dart';

@NowaGenerated({'auto-width': 169.8037109375, 'auto-height': 40.0})
class Yeslogout extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Yeslogout({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xffbfbfbf), width: 1.0),
          borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: GestureDetector(
          onTap: () {
            sharedPrefs.clear();
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Login()));
          },
          child: const Text(
            'Yes - I want to log out',
          ),
        ),
      ),
    );
  }
}
