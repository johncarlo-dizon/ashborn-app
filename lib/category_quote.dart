import 'package:ashborn/quote_life.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/category.dart';
import 'package:ashborn/quote_confidence.dart';
import 'package:ashborn/quote_inspirational.dart';
import 'package:ashborn/quote_love.dart';
import 'package:ashborn/quote_motivational.dart';
import 'package:ashborn/quote_philosopical.dart';
import 'package:ashborn/quote_positive.dart';
import 'package:ashborn/quote_sad.dart';

class CategoryQuote extends StatefulWidget {
  const CategoryQuote({super.key});

  @override
  State<CategoryQuote> createState() => _CategoryQuoteState();
}

class _CategoryQuoteState extends State<CategoryQuote> {
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
          'General Quotes',
          style: TextStyle(
            color: Color(0xFF262626),
            letterSpacing: 1.2,
            height: 1.5,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
