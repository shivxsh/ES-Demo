import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class FireScreen extends StatelessWidget {
  const FireScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyApp()),
        );
      },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          color: Colors.red,
          padding: const EdgeInsets.only(top:200,left: 90,bottom: 100,right: 80),
          child: Column(
              children: [
              Container(
              height: 220,
              // width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/crisis.png"),
                    fit: BoxFit.cover
                ),
              ),
              ),
                RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Warning!\n',
                            style: TextStyle(
                              fontSize: 53,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow,
                        ) ),
                        TextSpan(
                            text: '\n\nFire Detected',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),
              ]),
        ),
      ),
    );
  }
}
