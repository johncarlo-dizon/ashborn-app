import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';
import 'settings.dart';

class InspiApp extends StatefulWidget {
  const InspiApp({super.key});

  @override
  State<InspiApp> createState() => _InspiAppState();
}

class _InspiAppState extends State<InspiApp> {
  int currentIndexqi = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqi = prefs.getInt('currentIndexqi') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqi', currentIndexqi);
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
                  CupertinoPageRoute(builder: (context) => CategoryQuote()),
                  (Route<dynamic> route) => false);
            }),
        middle: Text(
          'Inspirational',
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
              lastPage = InspiApp();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
      ),
    );
  }
}
