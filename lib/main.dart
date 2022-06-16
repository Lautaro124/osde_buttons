import 'package:flutter/material.dart';
import 'package:osde_botonera/assets/enums/navigation_route.dart';
import 'package:osde_botonera/assets/themes/theme_mode_provider.dart';
import 'package:provider/provider.dart';

import 'assets/themes/theme_choise.dart';
import 'screens/dashboard/dashboard.dart';
import 'screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (BuildContext context) => ThemeModeProvider(),
        builder: (BuildContext context, _) {
          final themeProvider = Provider.of<ThemeModeProvider>(context);
          return MaterialApp(
            title: 'Osde Botonera',
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme(),
            darkTheme: MyThemes.darkTheme(),
            initialRoute: NavigationRoute.login.route,
            routes: {
              NavigationRoute.login.route: (BuildContext context) =>
                  const Login(),
              NavigationRoute.dashboard.route: (BuildContext context) =>
                  const Dashboard()
            },
          );
        },
      );
}
