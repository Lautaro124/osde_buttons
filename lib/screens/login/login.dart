import 'package:flutter/material.dart';

import '../../widget/generator_screen/screen_generator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return screenGenerator(child: Container());
  }
}
