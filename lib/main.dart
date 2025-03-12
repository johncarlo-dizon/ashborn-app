import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ashborn/category.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

void main() {
  runApp(CupertinoApp(
    theme: CupertinoThemeData(brightness: Brightness.light),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  _loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      navmode = prefs.getBool('navmode') ?? true;
      gesmode = prefs.getBool('gesmode') ?? false;
      quotefontFamily = prefs.getString('quotefontFamily') ?? "Georgia";
      titlefontFamily = prefs.getString('titlefontFamily') ?? "Georgia";
      quotefontSize = prefs.getDouble('quotefontSize') ?? 18.0;
      titlefontSize = prefs.getDouble('titlefontSize') ?? 15.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(
              CupertinoIcons.profile_circled,
              size: 25,
              color: Color(0xFF3C2A21),
            ),
            onPressed: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text(
                        'Development Team',
                        style: TextStyle(
                          color: Color(0xFF0d0d0d),
                        ),
                      ),
                      content: Column(
                        children: [
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFf2f2f2),
                              image: MediaQuery.of(context).size.width > 320
                                  ? DecorationImage(
                                      image: AssetImage('images/aaron.jpg'),
                                      alignment: Alignment.centerRight,
                                      fit: BoxFit.contain,
                                    )
                                  : null,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Avendano, Aaron Jireh",
                                        style:
                                            TextStyle(color: Color(0xFF0d0d0d)),
                                      ),
                                      Text(
                                        "Quality Assurance Tester",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF262626)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFf2f2f2),
                              image: MediaQuery.of(context).size.width > 320
                                  ? DecorationImage(
                                      image: AssetImage('images/joseph.jpg'),
                                      alignment: Alignment.centerRight,
                                      fit: BoxFit.contain,
                                    )
                                  : null,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Basilio, Joseph Lee",
                                        style:
                                            TextStyle(color: Color(0xFF0d0d0d)),
                                      ),
                                      Text(
                                        "UI/UX Designer",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF595959)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFf2f2f2),
                                image: MediaQuery.of(context).size.width > 320
                                    ? DecorationImage(
                                        image: AssetImage('images/joel.jpg'),
                                        alignment: Alignment.centerRight,
                                        fit: BoxFit.contain,
                                      )
                                    : null),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dizon, Joel",
                                        style:
                                            TextStyle(color: Color(0xFF0d0d0d)),
                                      ),
                                      Text(
                                        "Quality Assurance Tester",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF262626)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFf2f2f2),
                                image: MediaQuery.of(context).size.width > 320
                                    ? DecorationImage(
                                        image: AssetImage('images/jc.jpg'),
                                        alignment: Alignment.centerRight,
                                        fit: BoxFit.contain,
                                      )
                                    : null),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dizon, John Carlo",
                                        style:
                                            TextStyle(color: Color(0xFF0d0d0d)),
                                      ),
                                      Text(
                                        "Software Developer",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF595959)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFf2f2f2),
                              image: MediaQuery.of(context).size.width > 320
                                  ? DecorationImage(
                                      image: AssetImage('images/jomel.jpg'),
                                      alignment: Alignment.centerRight,
                                      fit: BoxFit.contain,
                                    )
                                  : null,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Simbillio, Jomel",
                                        style:
                                            TextStyle(color: Color(0xFF0d0d0d)),
                                      ),
                                      Text(
                                        "UI/UX Designer",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF262626)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        CupertinoButton(
                            child: Text(
                              'Close',
                              style: TextStyle(
                                  color: CupertinoColors.destructiveRed),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ],
                    );
                  });
            }),
      ),
    );
  }
}
