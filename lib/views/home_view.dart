import 'package:DynamicallyThemeData/models/custom_theme_data.dart';
import 'package:DynamicallyThemeData/shared/another_custom_theme_data_of_arif.dart';
import 'package:DynamicallyThemeData/shared/custom_theme_data_of_arif.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle),
        title: Text("Dynamically Theme Data App Bar"),
        actions: [Icon(Icons.alarm)],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data"),
            Text("data"),
            Text("data",
                style: Theme.of(context).appBarTheme.textTheme != null
                    ? Theme.of(context).appBarTheme.textTheme.headline6
                    : TextStyle(color: Colors.red)),
            Text("data"),
            Text("data"),
            _buildOutlineButton(
                context: context,
                child: Text("Theme Data Dark"),
                themeData: ThemeData.dark()),
            _buildOutlineButton(
                context: context,
                child: Text("Theme Data Light"),
                themeData: ThemeData.light()),
            _buildOutlineButton(
                context: context,
                child: Text("Theme Data Of Arif"),
                themeData: customThemeDataOfArif),
            _buildOutlineButton(
                context: context,
                child: Text("Another Theme Data Of Arif"),
                themeData: anotherCustomThemeDataOfArif),
          ],
        ),
      ),
    );
  }

  OutlineButton _buildOutlineButton(
      {BuildContext context, Widget child, ThemeData themeData}) {
    return OutlineButton(
        child: child,
        onPressed: () {
          Provider.of<ThemeDataModel>(context, listen: false)
              .setThemeData(themeData);
        });
  }
}
