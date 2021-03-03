import 'package:flutter/material.dart';

class HomeQuickStart extends StatefulWidget {
  @override
  _HomeQuickStartState createState() => _HomeQuickStartState();
}

class _HomeQuickStartState extends State<HomeQuickStart> {
  // members for checkboxes
  List _selections = <bool>[true, false];

  // members for dropdownButton
  List _categoryName = <String>['max 17 charactors', '這裡最多能塞九個字', '工讀']; // 模擬資料庫匯入
  // TODO: 一開始要預設一個類別，而且僅存一個類別時不能刪除此類別
  String _selectName;

  // functions
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
          // INFO: 開始按鈕
          Container(
            width: 150,
            height: 150,
            child: FloatingActionButton(
              child: Icon(
                Icons.play_arrow_outlined,
                size: 150,
              ),
              onPressed: null, // 檢查事項名稱是否在9個中文以內，或是跟已存在的重複
            ),
          ),

          // INFO: 輸入框
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

          // INFO: 新增為主類別
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
              controlAffinity: ListTileControlAffinity.leading, // 使勾選框在前面
            ),
          ),

          // INFO: 新增子類別至
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
                    hint: Text('最多可塞九個全形字'), // 拉寬
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
              controlAffinity: ListTileControlAffinity.leading, // 使勾選框在前面
            ),
          ),
        ],
      ),
    );
  }
}
