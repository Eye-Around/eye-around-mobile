import 'package:flutter/material.dart';
import 'activities.dart';
import 'home_page.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eye-Around',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      // initialRoute: '/',
      // routes: {
      //   '/b' : (context) => HomePage(),
      //   '/c' : (context) => Activities(),
      // },
      home: LogIn(),
    );
  }
}

