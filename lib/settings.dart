import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'variable.dart';
import 'main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  _loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      navmode = prefs.getBool('navmode') ?? true;
      gesmode = prefs.getBool('gesmode') ?? false;
      quotefontFamily = prefs.getString('quotefontFamily') ?? "Georgia";
      titlefontFamily = prefs.getString('titlefontFamily') ?? "Georgia";
      quotefontSize = prefs.getDouble('quotefontSize') ?? 18.0;
      titlefontSize = prefs.getDouble('titlefontSize') ?? 15.0;
    });
  }

  _saveSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('navmode', navmode);
    prefs.setBool('gesmode', gesmode);
    prefs.setString('quotefontFamily', quotefontFamily);
    prefs.setString('titlefontFamily', titlefontFamily);
    prefs.setDouble('quotefontSize', quotefontSize);
    prefs.setDouble('titlefontSize', titlefontSize);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(
            CupertinoIcons.back,
            color: CupertinoColors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context, CupertinoPageRoute(builder: (context) => lastPage));
          },
        ),
        middle: Text(
          'Settings',
          style: TextStyle(
            color: Color(0xFF1A120B),
            letterSpacing: 1.2,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
