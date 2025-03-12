import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeathnoteApp extends StatefulWidget {
  const DeathnoteApp({super.key});

  @override
  State<DeathnoteApp> createState() => _DeathnoteAppState();
}

class _DeathnoteAppState extends State<DeathnoteApp> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "The moment you set your mind on something, the world will begin to align in mysterious ways.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "When you are faced with destiny, you must accept it and move forward.",
      "author": "- L Lawliet"
    },
    {
      "quote":
          "Those who fear failure are those who will never know true victory.",
      "author": "- Ryuk"
    },
    {
      "quote":
          "The future is but a series of choices, each leading you toward your inevitable end.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "If you cannot embrace your ambition, you will forever remain in the shadows of others.",
      "author": "- Misa Amane"
    },
    {
      "quote":
          "The true battle lies not in stopping when you are tired, but in pushing forward when you believe you cannot.",
      "author": "- Near"
    },
    {
      "quote": "Only after death do we truly understand the value of life.",
      "author": "- L Lawliet"
    },
    {
      "quote":
          "Power is not given, it is taken, and those who work the hardest will wield it.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "There is no success without sacrifice. Only those who give everything will see the fruits of their labor.",
      "author": "- Ryuk"
    },
    {
      "quote":
          "The time to act is always now, for the future waits for no one.",
      "author": "- Misa Amane"
    },
    {
      "quote":
          "The first step toward power begins with understanding the consequences of your choices.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "To change the world, you must first understand the darkness that exists within it.",
      "author": "- L Lawliet"
    },
    {
      "quote":
          "If you stop to think, you may never act. You must simply begin.",
      "author": "- Ryuk"
    },
    {
      "quote":
          "In the end, your belief in yourself is the only thing that matters.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "Leadership begins with self-confidence, but it is tested in solitude.",
      "author": "- Near"
    },
    {
      "quote":
          "Imagination is the seed of power; what you dream, you can become.",
      "author": "- Ryuk"
    },
    {
      "quote":
          "The best revenge is not to retaliate, but to surpass all expectations.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "Happiness cannot be found by seeking it, but by shaping the path that leads to it.",
      "author": "- L Lawliet"
    },
    {
      "quote":
          "Greatness is not born; it is made through the sacrifices we are willing to endure.",
      "author": "- Misa Amane"
    },
    {
      "quote":
          "Your fear holds you back, but the unknown holds the key to everything you've ever wanted.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "Opportunities are born from the chaos of conflict. Seize them, or be crushed by them.",
      "author": "- Near"
    },
    {
      "quote":
          "Your fate is not sealed, but shaped by the strength of your resolve.",
      "author": "- Ryuk"
    },
    {
      "quote":
          "The greatest limitations are not the ones imposed by others, but those that reside within your mind.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "Those who squander their time will never understand the value of each passing moment.",
      "author": "- L Lawliet"
    },
    {
      "quote":
          "The future is not given to those who wait, but to those who act.",
      "author": "- Near"
    },
    {
      "quote":
          "We all face challenges, but only those who rise above them achieve true greatness.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "You must rise after each fall, for only in doing so can you embrace the power to change.",
      "author": "- Ryuk"
    },
    {
      "quote":
          "Success is not found in what you achieve, but in what you become through your struggles.",
      "author": "- L Lawliet"
    },
    {
      "quote":
          "There are no shortcuts to power, only the long, relentless road of effort.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "The end may not justify the means, but the means define the end.",
      "author": "- Ryuk"
    },
    {
      "quote": "To truly begin, you must first conquer the fear of failure.",
      "author": "- Light Yagami"
    },
    {
      "quote": "Destiny is not a matter of chance, but a matter of choice.",
      "author": "- Near"
    },
    {
      "quote":
          "The moment you think you've reached your limit is the moment you must push forward.",
      "author": "- Light Yagami"
    },
    {
      "quote": "A goal without action is but an illusion, a dream unfulfilled.",
      "author": "- Ryuk"
    },
    {
      "quote":
          "The only way to truly change is to embrace the challenge and defy the odds.",
      "author": "- Near"
    },
    {
      "quote":
          "We are the architects of our own fates, but we are also the ones who must destroy them.",
      "author": "- Light Yagami"
    },
    {
      "quote":
          "Failure is but a step toward success, for even in defeat, there is strength to be found.",
      "author": "- Ryuk"
    },
    {
      "quote":
          "To achieve greatness, you must first defeat the limits you place upon yourself.",
      "author": "- Light Yagami"
    }
  ];
  int currentIndexdeathnote = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexdeathnote = prefs.getInt('currentIndexdeathnote') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexdeathnote', currentIndexdeathnote);
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
            'Death Note',
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
                lastPage = DeathnoteApp();
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
                            quotes[currentIndexdeathnote]["quote"]!,
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
                        quotes[currentIndexdeathnote]["author"]!,
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
                                          currentIndexdeathnote =
                                              (currentIndexdeathnote - 1) %
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
                                          currentIndexdeathnote =
                                              (currentIndexdeathnote + 1) %
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
                                        currentIndexdeathnote =
                                            (currentIndexdeathnote - 1) %
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
                                        currentIndexdeathnote =
                                            (currentIndexdeathnote + 1) %
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
