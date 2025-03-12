import 'package:ashborn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_verses.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

class FaithVerse extends StatefulWidget {
  const FaithVerse({super.key});

  @override
  State<FaithVerse> createState() => _FaithVerseState();
}

class _FaithVerseState extends State<FaithVerse> {
  int currentIndexfv = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexfv = prefs.getInt('currentIndexfv') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexfv', currentIndexfv);
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
                  CupertinoPageRoute(builder: (context) => VerseCategory()),
                  (Route<dynamic> route) => false);
            }),

        // MIDDLE ===============================================================================
        middle: Text(
          'Faith and Trust',
          style: TextStyle(
            color: Color(0xFFD404040),
            letterSpacing: 1.2,
            height: 1.5,
          ),
        ),
        // MIDDLE ===============================================================================

        // TRAILING ===============================================================================
        trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(
              CupertinoIcons.settings,
              size: 20,
              color: Color(0xFF1A120B),
            ),
            onPressed: () {
              lastPage = FaithVerse();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
        // TRAILING ===============================================================================
      ),
    );
  }
}
