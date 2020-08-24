import 'package:flutter/material.dart';

final anotherCustomThemeDataOfArif = ThemeData(
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.red,
        shadowColor: Colors.black,
        elevation: 10,
        iconTheme: IconThemeData(color: Colors.white, size: 40),
        actionsIconTheme: IconThemeData(color: Colors.green, size: 25),
        textTheme:
            TextTheme(headline6: TextStyle(color: Colors.lime, fontSize: 20))),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.blue),
    textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.red, fontSize: 40),
        bodyText2: TextStyle(color: Colors.indigo, fontSize: 30)));
