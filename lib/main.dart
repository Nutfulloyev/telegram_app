import 'package:flutter/material.dart';
import 'package:untitled2/pages/all_page.dart';
import 'package:untitled2/pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context)=>const HomePage(),
        AllPage.id: (context)=>const AllPage(),
      },
    );
  }
}


