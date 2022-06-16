import 'package:flutter/material.dart';

import '../../widget/generator_view/screen_generator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return screenGenerator(child: Container());
  }
}
