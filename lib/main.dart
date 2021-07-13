import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.lightBlue.shade300,
          primaryColor: Colors.lightBlue.shade300),
      debugShowCheckedModeBanner: false,
      title: "Yaşam Hesaplama",
      home: const InputPage(),
    );
  }
}
