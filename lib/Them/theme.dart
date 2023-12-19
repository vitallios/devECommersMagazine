import 'package:flutter/material.dart';

final darkThem = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 244, 244, 244),
  listTileTheme: const ListTileThemeData(iconColor: Colors.black),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.black,
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w300,
    ),
  ),
);
