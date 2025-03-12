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
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
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
                                    'Faith and Trust',
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
                                      builder: (context) => FaithVerse()));
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
                                    'Love and Compassion',
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
                                      builder: (context) => LoveVerse()));
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
                                    'Hope and Heartening',
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
                                      builder: (context) => HopeVerse()));
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
                                    'Strength and Courage',
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
                                      builder: (context) => StrengthVerse()));
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
