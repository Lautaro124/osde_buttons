import 'package:flutter/material.dart';
import '../../widget/generator_screen/screen_generator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  breakingNews() async {}
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: breakingNews,
          child: const Text('news'),
        ),
        const SizedBox(width: 16),
        Text('Count: test'),
      ],
    );
//    return screenGenerator(child: Container());
  }
}
