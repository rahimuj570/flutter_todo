import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:todo/screens/home_page.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox("todos");
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.yellow[500]),
        scaffoldBackgroundColor: Colors.yellow[200],
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
