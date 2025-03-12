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
        child: WillPopScope(
          onWillPop: () async {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (context) => MyApp()),
              (route) => false,
            );
            return false;
          },
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Image.asset(
                      'images/a4.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Discover Daily Inspiration and Motivation',
                        style:
                            TextStyle(fontSize: 30, color: Color(0xFF0d0d0d)),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFf2f2f2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CupertinoButton(
                            child: Text(
                              'General Quotes',
                              style: TextStyle(
                                  color: Color(0xFFD404040),
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => CategoryQuote()));
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFf2f2f2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CupertinoButton(
                            child: Text(
                              'Anime Quotes',
                              style: TextStyle(
                                  color: Color(0xFFD404040),
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => AnimeCategory()));
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFf2f2f2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CupertinoButton(
                            child: Text(
                              'Bible Verses',
                              style: TextStyle(
                                  color: Color(0xFFD404040),
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => VerseCategory()));
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
