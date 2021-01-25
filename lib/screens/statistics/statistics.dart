import 'package:flutter/material.dart';
import '../menu.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('統計'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '任務統計'),
              Tab(text: '時間統計'),
            ],
          ),
        ),
        drawer: Menu('/Statistics'),
        body: TabBarView(
          children: <Widget>[
            Center(),
            Center(),
          ],
        ),
      ),
    );
  }
}
