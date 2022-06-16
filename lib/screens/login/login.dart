import 'package:flutter/material.dart';
import 'package:osde_botonera/assets/enums/navigation_route.dart';

import '../../widget/generator_screen/screen_generator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return screenGenerator(
      context,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Bienvenido'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, NavigationRoute.dashboard.route);
            },
            child: const Text('Osde'),
          )
        ],
      ),
    );
  }
}
