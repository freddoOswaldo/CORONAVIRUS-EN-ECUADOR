import 'package:covid19_model/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:covid19_model/src/routes/app_routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid19',
      initialRoute: 'dashboard',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: textColor),
      ),
    );
  }
}