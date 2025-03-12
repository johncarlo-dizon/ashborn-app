import 'package:flutter/cupertino.dart';
import 'package:ashborn/category.dart';
import 'package:ashborn/verse_faith.dart';
import 'package:ashborn/verse_hope.dart';
import 'package:ashborn/verse_love.dart';
import 'package:ashborn/verse_strength.dart';

class VerseCategory extends StatefulWidget {
  const VerseCategory({super.key});

  @override
  State<VerseCategory> createState() => _VerseCategoryState();
}

class _VerseCategoryState extends State<VerseCategory> {
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
                  CupertinoPageRoute(builder: (context) => CategoryApp()),
                  (Route<dynamic> route) => false);
            }),
        middle: Text(
          'Bible Verses',
          style: TextStyle(color: Color(0xFF1A120B)),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
