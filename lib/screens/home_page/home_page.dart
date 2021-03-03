import 'package:flutter/material.dart';
import '../menu.dart';
import 'home_quick_start.dart';
import 'home_toggle_buttons.dart';
import 'star_list_view.dart';
import 'today_list_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // functions
  @override
  Widget build(BuildContext context) {
    // FIXME: 切換畫面function待修
    Widget switchList() {
      if (selections[0])
        return StarListView();
      else
        return TodayListView();
    }

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
              child: switchList(),
            ),
          ],
        ),
      ),
    );
  }
}
