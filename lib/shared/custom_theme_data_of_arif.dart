import 'package:flutter/material.dart';

final customThemeDataOfArif = ThemeData(
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.orange,
        shadowColor: Colors.black,
        elevation: 10,
        iconTheme: IconThemeData(color: Colors.black, size: 40),
        actionsIconTheme: IconThemeData(color: Colors.green, size: 25),
        textTheme:
            TextTheme(headline6: TextStyle(color: Colors.lime, fontSize: 20))),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.red),
    textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.red, fontSize: 40),
        bodyText2: TextStyle(color: Colors.blue, fontSize: 30)));
