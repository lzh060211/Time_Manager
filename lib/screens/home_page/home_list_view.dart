import 'package:flutter/material.dart';

class HomeListView extends StatefulWidget {
  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  // members
  final double titleFontSize = 16;
  final double subtitleFontSize = 12;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.circle),
          title: Text('讀書', style: TextStyle(fontSize: titleFontSize)),
          subtitle: Text('預計花費 02:00:00', style: TextStyle(fontSize: subtitleFontSize)),
          dense: true,
          trailing: Icon(Icons.star, color: Colors.yellow),
        );
      },
    );
  }
}
