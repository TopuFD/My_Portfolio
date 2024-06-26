import 'package:flutter/material.dart';
import 'package:web_myself/pages/home_page.dart';

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
      title: 'Portfolio',
      theme: ThemeData.dark(),
      home: ConstrainedBox(constraints: const BoxConstraints(minWidth: 200),child: HomePage()),
    );
  }
}
