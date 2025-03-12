import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NarutoApp extends StatefulWidget {
  const NarutoApp({super.key});

  @override
  State<NarutoApp> createState() => _NarutoAppState();
}

class _NarutoAppState extends State<NarutoApp> {
  int currentIndexnaruto = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexnaruto = prefs.getInt('currentIndexnaruto') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexnaruto', currentIndexnaruto);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(
              CupertinoIcons.left_chevron,
              size: 20,
              color: Color(0xFF1A120B),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  CupertinoPageRoute(builder: (context) => AnimeCategory()),
                  (Route<dynamic> route) => false);
            }),
        middle: Text(
          'Naruto',
          style: TextStyle(
            color: Color(0xFFD404040),
            letterSpacing: 1.2,
            height: 1.5,
          ),
        ),
        trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(
              CupertinoIcons.settings,
              size: 20,
              color: Color(0xFF1A120B),
            ),
            onPressed: () {
              lastPage = NarutoApp();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
      ),
    );
  }
}
