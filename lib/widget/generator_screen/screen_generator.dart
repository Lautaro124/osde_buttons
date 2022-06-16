import 'package:flutter/material.dart';

const double _maxHeigt = 0.85;

Scaffold screenGenerator(BuildContext context, {required Widget child}) =>
    Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * _maxHeigt,
            child: child,
          ),
        ),
      ),
    );
