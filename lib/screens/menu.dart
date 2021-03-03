import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  // members
  final String _currentScreen;

  // functions
  Menu(this._currentScreen);

  bool selected(String screen) {
    if (screen == _currentScreen)
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    // tap function
    void tap(String destinationScreen) {
      if (_currentScreen == destinationScreen)
        Navigator.pop(context);
      else
        Navigator.popAndPushNamed(context, destinationScreen);
    }

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Quick Start'),
            selected: selected('/HomePage'),
            onTap: () => tap('/HomePage'),
          ),
          ListTile(
            leading: Icon(Icons.pie_chart),
            title: Text('統計'),
            selected: selected('/Statistics'),
            onTap: () => tap('/Statistics'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('設定'),
            selected: selected('/Settings'),
            onTap: () => tap('/Settings'),
          )
        ],
      ),
    );
  }
}
