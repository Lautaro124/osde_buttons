import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:osde_botonera/assets/enums/navigation_route.dart';
import 'package:osde_botonera/screens/login/utils/google_sign_in.dart';

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
          ElevatedButton.icon(
            icon: const Icon(Icons.mail_outlined),
            label: const Text('Iniciar secion con google'),
            onPressed: signIn,
          )
        ],
      ),
    );
  }

  Future<dynamic> signIn() async {
    final GoogleSignInAccount? userAcount = await GoogleSignInApi.login();

    redirectDashboard(userAcount!);
  }

  void redirectDashboard(GoogleSignInAccount user) {
    List<String> mailsAcepted = ['@ctl', '@osde'];

    for (String value in mailsAcepted) {
      if (user.email.contains(value)) {
        Navigator.pushNamed(context, NavigationRoute.dashboard.route);
        break;
      }
    }
  }
}
