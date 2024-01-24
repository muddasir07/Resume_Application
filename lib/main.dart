import 'package:flutter/material.dart';
import 'package:muddasir_portfolio_application/screens/about.dart';
import 'package:muddasir_portfolio_application/screens/homepage.dart';
import 'package:muddasir_portfolio_application/screens/project.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Soho"),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => const MyHome(),
      'about': (context) => const MyAbout(),
      'project': (context) => const MyProjects()
    },
  ));
}
