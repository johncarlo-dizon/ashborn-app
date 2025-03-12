import 'package:ashborn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

class Philosopical extends StatefulWidget {
  const Philosopical({super.key});

  @override
  State<Philosopical> createState() => _PhilosopicalState();
}

class _PhilosopicalState extends State<Philosopical> {
  int currentIndexqp = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqp = prefs.getInt('currentIndexqp') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqp', currentIndexqp);
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

        // MIDDLE ===============================================================================
        middle: Text(
          'Philosophical',
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
              lastPage = Philosopical();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
        // TRAILING ===============================================================================
      ),
    );
  }
}
