import 'package:designs/screens/screen_four.dart';
import 'package:designs/screens/screen_first.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenFirst(),
    );
  }
}
