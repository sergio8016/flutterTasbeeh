import 'package:flutter/material.dart';

// Custom Imports
// import 'package:tasbeeh/src/pages/home_page.dart';
import 'package:tasbeeh/src/pages/counter_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Center(
      child: CounterPage(),
    ));
  }
}
