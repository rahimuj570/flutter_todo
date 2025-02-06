import 'package:flutter/material.dart';
import 'package:todo/screens/home_page.dart';

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
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.yellow[500]),
        scaffoldBackgroundColor: Colors.yellow[200],
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
