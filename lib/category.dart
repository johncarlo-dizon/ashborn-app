import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/main.dart';
import 'package:ashborn/category_quote.dart';
import 'package:ashborn/category_verses.dart';
import 'package:flutter/material.dart';

class CategoryApp extends StatefulWidget {
  const CategoryApp({super.key});

  @override
  State<CategoryApp> createState() => _CategoryAppState();
}

class _CategoryAppState extends State<CategoryApp> {
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
                  CupertinoPageRoute(builder: (context) => MyApp()),
                  (Route<dynamic> route) => false);
            }),
        middle: Text(
          'Ashborn',
          style: TextStyle(color: Color(0xFF1A120B)),
        ),
      ),
    );
  }
}
