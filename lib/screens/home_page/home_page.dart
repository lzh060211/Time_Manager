import 'package:flutter/material.dart';
import '../menu.dart';
import 'home_quick_start.dart';
import 'home_toggle_buttons.dart';
import 'home_list_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, // 防止鍵盤升起改變布局
      appBar: AppBar(
        title: Text('Time Manager'),
      ),
      drawer: Menu('/HomePage'), // '../menu.dart'
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            HomeQuickStart(),
            Container(
              width: 350,
              height: 40,
              child: HomeToggleButtons(),
            ),
            Container(
              width: 350,
              height: 200,
              child: HomeListView(),
            ),
          ],
        ),
      ),
    );
  }
}
