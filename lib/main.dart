import 'package:flutter/material.dart';
import 'package:myapptest/src/pages/main_page.dart';
import 'src/pages/home_page.dart';
import 'src/theme/theme.dart';
import 'package:myapptest/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: LoginDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
