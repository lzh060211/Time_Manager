import 'package:flutter/material.dart';
import '../menu.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定'), // '../menu.dart'
      ),
      drawer: Menu('/Settings'),
      body: Text('Settings Page'),
    );
  }
}
