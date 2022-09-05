import 'package:flutter/material.dart';
import 'package:search_module_test/search_module/ui/pages/splash_page.dart';

import 'search_module/ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {'/home': (context) => HomePage()},
      home: const PreloaderScreen(),
    );
  }
}
