import 'package:ashborn/anime_attacktitan.dart';
import 'package:ashborn/category.dart';
import 'package:ashborn/anime_cowboy.dart';
import 'package:ashborn/anime_deathnote.dart';
import 'package:ashborn/anime_fullmetal.dart';
import 'package:ashborn/quote_motivational.dart';
import 'package:ashborn/anime_naruto.dart';
import 'package:ashborn/anime_neongenesis.dart';
import 'package:ashborn/anime_steinsgate.dart';
import 'package:flutter/cupertino.dart';

class AnimeCategory extends StatefulWidget {
  const AnimeCategory({super.key});

  @override
  State<AnimeCategory> createState() => _AnimeCategoryState();
}

class _AnimeCategoryState extends State<AnimeCategory> {
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
            'Anime Quotes',
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
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
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
                                    'Naruto',
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
                                      builder: (context) => NarutoApp()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

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
                                    'Death Note',
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
                                      builder: (context) => DeathnoteApp()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

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
                                    'Fullmetal Alchemist',
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
                                      builder: (context) => FullmetalApp()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

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
                                    'Steins;Gate',
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
                                      builder: (context) => Steinsgate()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

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
                                    'Neon Genesis',
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
                                      builder: (context) => Neongenesis()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

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
                                    'Attack on Titan',
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
                                      builder: (context) => Attacktitan()));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Quote END -----------------------

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
                                    'Cowboy Bebop',
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
                                      builder: (context) => CowBoy()));
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
