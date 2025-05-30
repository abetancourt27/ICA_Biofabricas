import 'package:flutter/material.dart';
import 'intro_ICA.dart';
import 'panelprincipal_ICA.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICA App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        PanelPrincipal.routeName: (context) => const PanelPrincipal(),
      },
    );
  }
}
