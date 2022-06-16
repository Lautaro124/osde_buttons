import 'package:flutter/material.dart';
import 'package:osde_botonera/widget/app_bar/app_bar.dart';

const double _maxHeigt = 0.85;

Scaffold screenGenerator(BuildContext context, {required Widget child}) {
  return Scaffold(
    appBar: customAppBar(context),
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
}
