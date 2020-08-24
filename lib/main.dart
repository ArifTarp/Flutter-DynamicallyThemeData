import 'package:DynamicallyThemeData/models/custom_theme_data.dart';
import 'package:DynamicallyThemeData/shared/custom_theme_data_of_arif.dart';
import 'package:DynamicallyThemeData/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeDataModel(),
        )
      ],
      child: DynamicallyThemeData(),
    ));

class DynamicallyThemeData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ThemeDataModel>(context).getThemeData,
        title: 'Dynamically Theme Data App',
        home: HomeView());
  }
}
