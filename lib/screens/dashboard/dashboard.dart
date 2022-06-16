import 'package:flutter/material.dart';

import '../../widget/generator_screen/screen_generator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  void breakingNews() async {}
  @override
  Widget build(BuildContext context) {
    return screenGenerator(
      context,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: breakingNews,
            child: const Text('news'),
          ),
          const SizedBox(width: 16),
          const Text('Count: test'),
        ],
      ),
    );
  }
}
