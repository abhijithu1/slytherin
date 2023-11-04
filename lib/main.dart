import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slytherin Hub: Secrets Unleashed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0x0095D600),
          title: const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              "Snape's legecy",
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Medieval',
                color: Colors.green,
              ),
            ),
          ),
          centerTitle: true),
      backgroundColor: Colors.black,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              "There's not a single witch or wizard who went bad who wasn't in Slytherin",
              style: TextStyle(
                fontFamily: 'Cinzel',
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Image(
            image: AssetImage("lib/assets/slytherin.png"),
          ),
        ],
      ),
    );
  }
}
