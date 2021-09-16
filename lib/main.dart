import 'package:flutter/material.dart';
import 'package:list_view/screens/my_screen.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ListView",
      home: MyScreen(),
    );
  }
}

