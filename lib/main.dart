import 'package:flutter/material.dart';

import './pages/finance/FinanceHome.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keep',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.amber,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InitialPage(),
    );
  }
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FinanceHomeScreen();
  }
}
