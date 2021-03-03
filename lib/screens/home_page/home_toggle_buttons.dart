import 'package:flutter/material.dart';

// FIXME: 切換畫面function待修
List selections = <bool>[true, false];

class HomeToggleButtons extends StatefulWidget {
  @override
  _HomeToggleButtonsState createState() => _HomeToggleButtonsState();
}

class _HomeToggleButtonsState extends State<HomeToggleButtons> {
  // members
  List _title = <Widget>[
    SizedBox(width: 170, child: Center(child: Text('常用'))),
    SizedBox(width: 170, child: Center(child: Text('今日事項'))),
  ];
  List _selections = <bool>[true, false]; // public member，要讓home_page.dart使用

  // functions
  // FIXME: 切換畫面function待修
  void returnList(List list) {
    selections = list; // 將_selections(private)傳給全域的selections
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: _title,
        isSelected: _selections,
        onPressed: (int index) {
          setState(() {
            for (var i = 0; i < _selections.length; i++) {
              _selections[i] = false;
            }
            _selections[index] = true;
            // FIXME: 切換畫面function待修
            returnList(_selections);
          });
        },
      ),
    );
  }
}
