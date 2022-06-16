import 'package:flutter/material.dart';

import 'assets/themes/theme_choise.dart';
import 'screens/dashboard/dashboard.dart';
import 'screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(),
      darkTheme: MyThemes.darkTheme(),
      initialRoute: 'Login',
      routes: {
        'Login': (BuildContext context) => const Login(),
        'Dashboard': (BuildContext context) => const Dashboard()
      },
    );
  }
}
