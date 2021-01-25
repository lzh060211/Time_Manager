import 'package:flutter/material.dart';

class HomeQuickStart extends StatefulWidget {
  @override
  _HomeQuickStartState createState() => _HomeQuickStartState();
}

class _HomeQuickStartState extends State<HomeQuickStart> {
  // members for checkboxes
  List _selections = <bool>[true, false];

  // members for dropdownButton
  List _categoryName = <String>['課務', '家事', '工讀']; // 模擬資料庫匯入
  String _selectName;

  void initState() {
    super.initState();
    _selectName = _categoryName[0];
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Container>[
          Container(
            width: 150,
            height: 150,
            child: FloatingActionButton(
              child: Icon(
                Icons.play_arrow_outlined,
                size: 150,
              ),
              onPressed: null,
            ),
          ),
          Container(
            width: 280,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '事項名稱',
                isDense: true,
              ),
              controller: TextEditingController(text: '新增事項'),
              textAlign: TextAlign.center,
              cursorWidth: 2,
            ),
          ),
          Container(
            width: 350,
            child: CheckboxListTile(
              value: _selections[0],
              title: Text('新增為主類別', style: TextStyle(fontSize: 14)),
              dense: true,
              onChanged: (value) {
                setState(() {
                  if (value) {
                    _selections[0] = value;
                    _selections[1] = !value;
                  }
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Container(
            width: 350,
            child: CheckboxListTile(
              value: _selections[1],
              title: Row(
                children: <Widget>[
                  Text('新增子類別至  ', style: TextStyle(fontSize: 14)),
                  DropdownButton(
                    items: _categoryName.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value));
                    }).toList(),
                    hint: Text('這裡總共九個全形字'), // 拉寬
                    value: _selectName,
                    isDense: true,
                    onChanged: (newItem) {
                      setState(() => _selectName = newItem);
                    },
                  )
                ],
              ),
              dense: true,
              onChanged: (value) {
                setState(() {
                  if (value) {
                    _selections[1] = value;
                    _selections[0] = !value;
                  }
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
        ],
      ),
    );
  }
}
