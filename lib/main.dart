import 'package:es_fire_detection/red_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ));
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      );
  }
}

//create new class for "home" property of MaterialApp()
class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        // onTap: () => const FireScreen(),
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FireScreen()),
          );
        },
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            color: Colors.greenAccent,
            padding: const EdgeInsets.only(top:200,left: 80,bottom: 100,right: 70),
            child: Column(
                children:[
                  Container(
                    height: 220,
                    // width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/shield.png"),
                          // fit: BoxFit.cover
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                      'IDLE',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                      )
                    ),
                  const SizedBox(height: 50),
                  const Text(
                        'No Fire Detected',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ]),
            ),
      ),
      );
  }
}
