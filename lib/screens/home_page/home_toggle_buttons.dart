import 'package:flutter/material.dart';

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
  List _selections = <bool>[true, false];

  // functions
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
          });
        },
      ),
    );
  }
}
