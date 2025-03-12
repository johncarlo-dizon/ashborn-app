import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'variable.dart';
import 'main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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

  _saveSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('navmode', navmode);
    prefs.setBool('gesmode', gesmode);
    prefs.setString('quotefontFamily', quotefontFamily);
    prefs.setString('titlefontFamily', titlefontFamily);
    prefs.setDouble('quotefontSize', quotefontSize);
    prefs.setDouble('titlefontSize', titlefontSize);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(
              CupertinoIcons.back,
              color: CupertinoColors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, CupertinoPageRoute(builder: (context) => lastPage));
            },
          ),
          middle: Text(
            'Settings',
            style: TextStyle(
              color: Color(0xFF1A120B),
              letterSpacing: 1.2,
              height: 1.5,
            ),
          ),
        ),
        child: WillPopScope(
          onWillPop: () async {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (context) => lastPage),
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
                    // SET START
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'NAVIGATION',
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              MediaQuery.of(context).size.width > 320
                                  ? CupertinoButton(
                                      child: Icon(
                                        CupertinoIcons.exclamationmark_circle,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                      onPressed: () {
                                        showCupertinoDialog(
                                            context: context,
                                            builder: (context) {
                                              return CupertinoAlertDialog(
                                                content: Image.asset(
                                                  "images/img.png",
                                                  height: 600,
                                                  width: 400,
                                                  fit: BoxFit.fill,
                                                ),
                                                actions: [
                                                  CupertinoButton(
                                                      child: Text(
                                                        "Close",
                                                        style: TextStyle(
                                                            color: CupertinoColors
                                                                .destructiveRed),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      })
                                                ],
                                              );
                                            });
                                      })
                                  : SizedBox.shrink(),
                              MediaQuery.of(context).size.width > 185
                                  ? Text('Button',
                                      style: TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 1.2,
                                        height: 1.5,
                                      ))
                                  : SizedBox.shrink(),
                            ],
                          ),
                          CupertinoSwitch(
                              value: navmode,
                              onChanged: (bool value) {
                                setState(() {
                                  gesmode = navmode;
                                  navmode = !navmode;
                                  _saveSettings();
                                });
                              }),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 2,
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              MediaQuery.of(context).size.width > 320
                                  ? CupertinoButton(
                                      child: Icon(
                                        CupertinoIcons.exclamationmark_circle,
                                        color: CupertinoColors.inactiveGray,
                                      ),
                                      onPressed: () {
                                        showCupertinoDialog(
                                            context: context,
                                            builder: (context) {
                                              return CupertinoAlertDialog(
                                                content: Image.asset(
                                                  "images/img_1.png",
                                                  height: 600,
                                                  width: 400,
                                                  fit: BoxFit.fill,
                                                ),
                                                actions: [
                                                  CupertinoButton(
                                                      child: Text(
                                                        "Close",
                                                        style: TextStyle(
                                                            color: CupertinoColors
                                                                .destructiveRed),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      })
                                                ],
                                              );
                                            });
                                      })
                                  : SizedBox.shrink(),
                              MediaQuery.of(context).size.width > 185
                                  ? Text(
                                      'Gesture',
                                      style: TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 1.2,
                                        height: 1.5,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  : SizedBox.shrink(),
                            ],
                          ),
                          CupertinoSwitch(
                              value: gesmode,
                              onChanged: (bool value) {
                                setState(() {
                                  navmode = gesmode;
                                  gesmode = !gesmode;
                                  _saveSettings();
                                });
                              }),
                        ],
                      ),
                    ),
                    // SET END

                    // SET START
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'FONT FAMILY $quoteSet',
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: CupertinoSwitch(
                                value: quotefamily,
                                onChanged: (bool value) {
                                  setState(() {
                                    quotefamily = !quotefamily;

                                    if (quotefamily == true) {
                                      quoteSet = "QUOTE/VERSE";
                                    } else {
                                      quoteSet = "AUTHOR/TITLE";
                                    }
                                    print("Quote " + quotefontFamily);
                                    print("AUTHOR " + titlefontFamily);
                                  });
                                }),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Georgia",
                              style: TextStyle(
                                fontFamily: "Georgia",
                                fontSize: 16,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          CupertinoCheckbox(
                            value: quotefamily
                                ? quotefontFamily == "Georgia"
                                : titlefontFamily == "Georgia",
                            onChanged: (bool? value) {
                              if (value == true) {
                                setState(() {
                                  quotefamily
                                      ? quotefontFamily = "Georgia"
                                      : titlefontFamily = "Georgia";
                                  _saveSettings();
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 2,
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Roboto",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          CupertinoCheckbox(
                            value: quotefamily
                                ? quotefontFamily == "Roboto"
                                : titlefontFamily == "Roboto",
                            onChanged: (bool? value) {
                              if (value == true) {
                                setState(() {
                                  quotefamily
                                      ? quotefontFamily = "Roboto"
                                      : titlefontFamily = "Roboto";
                                  _saveSettings();
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 2,
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Arial",
                              style: TextStyle(
                                fontFamily: "Arial",
                                fontSize: 16,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          CupertinoCheckbox(
                            value: quotefamily
                                ? quotefontFamily == "Arial"
                                : titlefontFamily == "Arial",
                            onChanged: (bool? value) {
                              if (value == true) {
                                setState(() {
                                  quotefamily
                                      ? quotefontFamily = "Arial"
                                      : titlefontFamily = "Arial";
                                  _saveSettings();
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 2,
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Times New Roman",
                              style: TextStyle(
                                fontFamily: "Times New Roman",
                                fontSize: 16,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          CupertinoCheckbox(
                            value: quotefamily
                                ? quotefontFamily == "Times New Roman"
                                : titlefontFamily == "Times New Roman",
                            onChanged: (bool? value) {
                              if (value == true) {
                                setState(() {
                                  quotefamily
                                      ? quotefontFamily = "Times New Roman"
                                      : titlefontFamily = "Times New Roman";
                                  _saveSettings();
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 2,
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Courier New",
                              style: TextStyle(
                                fontFamily: "Courier New",
                                fontSize: 16,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          CupertinoCheckbox(
                            value: quotefamily
                                ? quotefontFamily == "Courier New"
                                : titlefontFamily == "Courier New",
                            onChanged: (bool? value) {
                              if (value == true) {
                                setState(() {
                                  quotefamily
                                      ? quotefontFamily = "Courier New"
                                      : titlefontFamily = "Courier New";
                                  _saveSettings();
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),

                    // SET START
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'QUOTE/VERSE FONT SIZE : $quotefontSize',
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: CupertinoSlider(
                        value: quotefontSize,
                        min: 10.0,
                        max: 25.0,
                        divisions: 100,
                        onChanged: (double newVolume) {
                          setState(() {
                            quotefontSize =
                                double.parse(newVolume.toStringAsFixed(2));
                            _saveSettings();
                          });
                        },
                      ),
                    ),

                    // SET START
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'AUTHOR/TITLE FONT SIZE : $titlefontSize',
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 1.2,
                                height: 1.5,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFf2f2f2),
                      ),
                      child: CupertinoSlider(
                        value: titlefontSize,
                        min: 5.0,
                        max: 20.0,
                        divisions: 100,
                        onChanged: (double newVolume) {
                          setState(() {
                            titlefontSize =
                                double.parse(newVolume.toStringAsFixed(2));
                            _saveSettings();
                          });
                        },
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
