import 'package:flutter/material.dart';
import './screens/home_page/home_page.dart';
import './screens/statistics/statistics.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Manager',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/HomePage',
      routes: <String, WidgetBuilder>{
        '/HomePage': (context) => HomePage(),
        '/Statistics': (context) => Statistics(),
      },
    );
  }
}




