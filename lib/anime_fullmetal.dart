import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FullmetalApp extends StatefulWidget {
  const FullmetalApp({super.key});

  @override
  State<FullmetalApp> createState() => _FullmetalAppState();
}

class _FullmetalAppState extends State<FullmetalApp> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "To gain something, you must first lose something of equal value. That is the law of equivalent exchange.",
      "author": "- Edward Elric"
    },
    {
      "quote": "A lesson without pain is meaningless. That’s how we grow.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "In the end, we’re all human. And there’s no way to escape that.",
      "author": "- Alphonse Elric"
    },
    {
      "quote":
          "The world is not perfect, but it’s there for us, doing the best it can… and that’s what makes it so damn beautiful.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "Humans are capable of great good and great evil. The question is: which side will you choose?",
      "author": "- Izumi Curtis"
    },
    {
      "quote":
          "People die, and sometimes they don’t come back. But that doesn’t mean they didn’t matter.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "The truth is not always beautiful, and sometimes it can be incredibly painful.",
      "author": "- Winry Rockbell"
    },
    {
      "quote":
          "We’re not perfect, and we never will be. But that doesn’t mean we should stop trying.",
      "author": "- Alphonse Elric"
    },
    {
      "quote":
          "The only way to deal with the pain of loss is to keep moving forward.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "There’s no such thing as a perfect world. But the world is what we make of it.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "Sacrifice is the price we pay for the things that matter the most.",
      "author": "- Izumi Curtis"
    },
    {
      "quote": "You can’t change the past, but you can shape the future.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "It’s not about being invincible. It’s about fighting through the pain, even when you know you might fall.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "To understand what’s really important in life, sometimes you must first lose it.",
      "author": "- Alphonse Elric"
    },
    {
      "quote":
          "You can’t always get what you want, but you’ll get what you need if you keep searching.",
      "author": "- Winry Rockbell"
    },
    {
      "quote":
          "In the pursuit of truth, you will face many trials. But it’s worth it. The truth is worth the struggle.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "What you’re born with doesn’t define you. It’s what you choose to become that matters.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "Sometimes, the hardest thing is to forgive yourself. But you have to move on.",
      "author": "- Alphonse Elric"
    },
    {
      "quote":
          "You can’t go back in time and fix your mistakes. But you can learn from them.",
      "author": "- Izumi Curtis"
    },
    {
      "quote":
          "The bond between people is the greatest power of all, for it can never be broken.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "Even when the world seems to be falling apart, you must hold onto your beliefs.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "The choices we make define who we are. Don’t let your choices define you by regret.",
      "author": "- Alphonse Elric"
    },
    {
      "quote":
          "In a world full of darkness, the light we have is the love we give to others.",
      "author": "- Winry Rockbell"
    },
    {
      "quote":
          "Power isn’t about control. It’s about the ability to protect what you love.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "The road to redemption is long and difficult, but it’s the only road worth walking.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "No one can change the past, but we can still make the future brighter.",
      "author": "- Izumi Curtis"
    },
    {
      "quote":
          "Life isn’t about what you have, it’s about what you’re willing to fight for.",
      "author": "- Roy Mustang"
    },
    {
      "quote": "True strength isn’t physical; it’s the strength of the heart.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "There’s no such thing as an easy answer. Only the strength to search for the truth.",
      "author": "- Alphonse Elric"
    },
    {
      "quote":
          "In the end, we’re all just searching for something to believe in.",
      "author": "- Winry Rockbell"
    },
    {
      "quote":
          "Don’t regret your choices. Learn from them, and use that knowledge to move forward.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "No matter how many times you fall, the important thing is to keep standing back up.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "Sometimes, the only way to move forward is to leave the past behind.",
      "author": "- Izumi Curtis"
    },
    {
      "quote":
          "Even in a world full of corruption, kindness is the one thing that can still shine through.",
      "author": "- Alphonse Elric"
    },
    {
      "quote":
          "The pain you feel today will become the strength you use tomorrow.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "Truth comes with a price, but the value of knowing it is beyond measure.",
      "author": "- Edward Elric"
    },
    {
      "quote":
          "You are not defined by what has happened to you, but by what you choose to become.",
      "author": "- Winry Rockbell"
    },
    {
      "quote":
          "In the end, we all carry a piece of the past with us. But that doesn’t mean we have to live in it.",
      "author": "- Roy Mustang"
    },
    {
      "quote":
          "The heart is the truest guide. Listen to it, and you’ll find the right path.",
      "author": "- Alphonse Elric"
    }
  ];
  int currentIndexfullmetal = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexfullmetal = prefs.getInt('currentIndexfullmetal') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexfullmetal', currentIndexfullmetal);
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
                    CupertinoPageRoute(builder: (context) => AnimeCategory()),
                    (Route<dynamic> route) => false);
              }),
          middle: Text(
            'Fullmetal Alchemist',
            style: TextStyle(
              color: Color(0xFFD404040),
              letterSpacing: 1.2,
              height: 1.5,
            ),
          ),
          trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(
                CupertinoIcons.settings,
                size: 20,
                color: Color(0xFF1A120B),
              ),
              onPressed: () {
                lastPage = FullmetalApp();
                Navigator.pushReplacement(context,
                    CupertinoPageRoute(builder: (context) => Settings()));
              }),
        ),
        child: WillPopScope(
          onWillPop: () async {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (context) => AnimeCategory()),
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
                    // CONTENT ===============================================================================

                    SizedBox(
                      height: 90,
                    ),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            quotes[currentIndexfullmetal]["quote"]!,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: quotefontSize,
                              fontFamily: '$quotefontFamily',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF262626),
                              letterSpacing: 1.2,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                      child: Text(
                        quotes[currentIndexfullmetal]["author"]!,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Color(0xFF262626).withOpacity(0.6),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          fontSize: titlefontSize,
                          letterSpacing: 1.2,
                          fontFamily: titlefontFamily,
                        ),
                      ),
                    ),

                    gesmode && navmode != true
                        ? SafeArea(
                            child: Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentIndexfullmetal =
                                              (currentIndexfullmetal - 1) %
                                                  quotes.length;
                                          _saveCurrentIndex();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentIndexfullmetal =
                                              (currentIndexfullmetal + 1) %
                                                  quotes.length;
                                          _saveCurrentIndex();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox.shrink(),

                    navmode && gesmode != true
                        ? Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: EdgeInsets.zero,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFFf2f2f2),
                                  ),
                                  child: CupertinoButton(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          CupertinoIcons.left_chevron,
                                          color: CupertinoColors.black,
                                          size: 15,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Prev",
                                          style: TextStyle(
                                              color: CupertinoColors.black,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        currentIndexfullmetal =
                                            (currentIndexfullmetal - 1) %
                                                quotes.length;
                                        _saveCurrentIndex();
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.zero,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFFf2f2f2),
                                  ),
                                  child: CupertinoButton(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Next",
                                          style: TextStyle(
                                              color: CupertinoColors.black,
                                              fontSize: 15),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          CupertinoIcons.right_chevron,
                                          color: CupertinoColors.black,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        currentIndexfullmetal =
                                            (currentIndexfullmetal + 1) %
                                                quotes.length;
                                        _saveCurrentIndex();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox.shrink(),

                    // CONTENT ===============================================================================
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
