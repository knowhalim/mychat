import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:mychat/api/aieapi.api.dart';

@NowaGenerated()
class Empty1 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Empty1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 156.0,
              left: 96.0,
              child: GestureDetector(
                onTap: () {
                  Aieapi().chatBot().then((value) {
                    value;
                  });
                },
                child: const Text(
                  'Write something',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
