import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CowBoy extends StatefulWidget {
  const CowBoy({super.key});

  @override
  State<CowBoy> createState() => _CowBoyState();
}

class _CowBoyState extends State<CowBoy> {
  int currentIndexcowboy = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexcowboy = prefs.getInt('currentIndexcowboy') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexcowboy', currentIndexcowboy);
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
          'Cowboy Bebop',
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
              lastPage = CowBoy();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
      ),
    );
  }
}
