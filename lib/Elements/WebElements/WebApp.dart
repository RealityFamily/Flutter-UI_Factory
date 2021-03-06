library ui_factory;
import 'package:flutter/material.dart';

import '../Interfaces/IApp.dart';

class WebApp extends IApp {
  WebApp({
    Key? key,
    required Map<String, Widget Function(BuildContext)> routes,
    Color? primaryColor,
    Color? backgroundColor,
    Color? buttonColor,
  }) : super(
          key: key,
          routes: routes,
          primaryColor: primaryColor,
          backgroundColor: backgroundColor,
          buttonColor: buttonColor,
        );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
      theme: ThemeData(
        primaryColor: primaryColor,
        backgroundColor: backgroundColor,
        buttonColor: buttonColor,
      ),
    );
  }
}
