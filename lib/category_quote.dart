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
        child: WillPopScope(
          onWillPop: () async {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (context) => CategoryApp()),
              (route) => false,
            );
            return false;
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SafeArea(
                child: Column(
                  children: [
                    //  Quote START -----------------------------------

                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: CupertinoButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Motivational',
                                    style: TextStyle(
                                      color: Color(0xFF0d0d0d),
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                MediaQuery.of(context).size.width > 320
                                    ? Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 17,
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Motivational()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

                    // Quote START -----------------------------------

                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: CupertinoButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Love',
                                    style: TextStyle(
                                      color: Color(0xFF0d0d0d),
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                MediaQuery.of(context).size.width > 320
                                    ? Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 17,
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => LoveApp()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

                    // Quote START -----------------------------------

                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: CupertinoButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Inspirational',
                                    style: TextStyle(
                                      color: Color(0xFF0d0d0d),
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                MediaQuery.of(context).size.width > 320
                                    ? Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 17,
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => InspiApp()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

                    // Quote START -----------------------------------

                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: CupertinoButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Positive',
                                    style: TextStyle(
                                      color: Color(0xFF0d0d0d),
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                MediaQuery.of(context).size.width > 320
                                    ? Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 17,
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Positive()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

                    // Quote START -----------------------------------

                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: CupertinoButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Sad',
                                    style: TextStyle(
                                      color: Color(0xFF0d0d0d),
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                MediaQuery.of(context).size.width > 320
                                    ? Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 17,
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Sad()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

                    // Quote START -----------------------------------

                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: CupertinoButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Philosophical',
                                    style: TextStyle(
                                      color: Color(0xFF0d0d0d),
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                MediaQuery.of(context).size.width > 320
                                    ? Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 17,
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Philosopical()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

                    // Quote START -----------------------------------

                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: CupertinoButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Life',
                                    style: TextStyle(
                                      color: Color(0xFF0d0d0d),
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                MediaQuery.of(context).size.width > 320
                                    ? Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 17,
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Life()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

                    // Quote START -----------------------------------

                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFf2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: CupertinoButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Confidence',
                                    style: TextStyle(
                                      color: Color(0xFF0d0d0d),
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                MediaQuery.of(context).size.width > 320
                                    ? Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 17,
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Confident()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
