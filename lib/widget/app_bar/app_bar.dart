import 'package:flutter/material.dart';
import 'package:osde_botonera/assets/themes/theme_mode_provider.dart';
import 'package:provider/provider.dart';

AppBar customAppBar(BuildContext context) {
  bool isDarkMode = Provider.of<ThemeModeProvider>(context).isDarkMode;
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Osde'),
        IconButton(
          onPressed: () =>
              Provider.of<ThemeModeProvider>(context, listen: false)
                  .togglesThemeMode(!isDarkMode),
          icon: Icon(
            isDarkMode ? Icons.dark_mode : Icons.light_mode,
          ),
        ),
      ],
    ),
  );
}
