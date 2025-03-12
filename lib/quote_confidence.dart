import 'package:ashborn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

class Confident extends StatefulWidget {
  const Confident({super.key});

  @override
  State<Confident> createState() => _ConfidentState();
}

class _ConfidentState extends State<Confident> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "Confidence is not 'They will like me.' Confidence is 'I’ll be fine if they don’t.'",
      "author": "- Christina Grimmie"
    },
    {
      "quote": "The most beautiful thing you can wear is confidence.",
      "author": "- Blake Lively"
    },
    {
      "quote": "With confidence, you have won before you have started.",
      "author": "- Marcus Garvey"
    },
    {
      "quote":
          "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
      "author": "- Christian D. Larson"
    },
    {
      "quote":
          "Confidence comes not from always being right but from not fearing to be wrong.",
      "author": "- Peter T. Mcintyre"
    },
    {
      "quote":
          "You are braver than you believe, stronger than you seem, and smarter than you think.",
      "author": "- A.A. Milne"
    },
    {
      "quote": "Self-confidence is the first requisite to great undertakings.",
      "author": "- Samuel Johnson"
    },
    {
      "quote":
          "Don't wait for the perfect moment. Take the moment and make it perfect.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is preparation. Everything else is beyond your control.",
      "author": "- Richard Kline"
    },
    {
      "quote":
          "The more you believe in yourself, the less you’ll fear failure.",
      "author": "- Unknown"
    },
    {
      "quote": "Confidence is silent. Insecurities are loud.",
      "author": "- Unknown"
    },
    {
      "quote": "It is not the mountain we conquer, but ourselves.",
      "author": "- Sir Edmund Hillary"
    },
    {
      "quote": "A girl should be two things: who and what she wants.",
      "author": "- Coco Chanel"
    },
    {
      "quote":
          "Confidence is preparation. Everything else is beyond your control.",
      "author": "- Richard Kline"
    },
    {
      "quote": "Be yourself; everyone else is already taken.",
      "author": "- Oscar Wilde"
    },
    {
      "quote": "It always seems impossible until it's done.",
      "author": "- Nelson Mandela"
    },
    {
      "quote":
          "You’ve got to do your own growing no matter how tall your grandfather was.",
      "author": "- Abraham Lincoln"
    },
    {
      "quote": "The most courageous act is still to think for yourself. Aloud.",
      "author": "- Coco Chanel"
    },
    {
      "quote":
          "Confidence isn’t walking into a room thinking you’re better than everyone. It’s walking in not having to compare yourself to anyone at all.",
      "author": "- Unknown"
    },
    {
      "quote":
          "When you have confidence, you can have a lot of fun. And when you have fun, you can do amazing things.",
      "author": "- Joe Namath"
    },
    {
      "quote": "Confidence is the key to unlocking your full potential.",
      "author": "- Unknown"
    },
    {
      "quote":
          "A confident person is someone who knows who they are, what they want, and where they’re going.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Self-confidence is a superpower. Once you start to believe in yourself, magic starts happening.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is the ability to feel beautiful, without needing someone to tell you.",
      "author": "- Unknown"
    },
    {
      "quote": "I am not afraid... I was born to do this.",
      "author": "- Joan of Arc"
    },
    {
      "quote":
          "Self-confidence is a reflection of your belief in your abilities.",
      "author": "- Unknown"
    },
    {
      "quote":
          "To love yourself is to understand you don’t need to be perfect to be good enough.",
      "author": "- Unknown"
    },
    {
      "quote": "Confidence is the foundation of all success.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Believe in yourself, push your limits, and do whatever it takes to conquer your goals.",
      "author": "- Unknown"
    },
    {"quote": "Be confident. You are amazing!", "author": "- Unknown"},
    {
      "quote": "Do something today that your future self will thank you for.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is the most important thing, because no one can take that from you.",
      "author": "- Unknown"
    },
    {"quote": "You are your only limit.", "author": "- Unknown"},
    {
      "quote":
          "Confidence is a habit that can be cultivated, just like any other habit.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is not about being perfect. It’s about believing you are good enough.",
      "author": "- Unknown"
    },
    {
      "quote": "The most beautiful thing you can wear is confidence.",
      "author": "- Blake Lively"
    },
    {
      "quote":
          "The only limit to our realization of tomorrow is our doubts of today.",
      "author": "- Franklin D. Roosevelt"
    },
    {
      "quote":
          "You were given this life because you are strong enough to live it.",
      "author": "- Unknown"
    },
    {
      "quote": "The most beautiful thing you can wear is confidence.",
      "author": "- Blake Lively"
    },
    {
      "quote":
          "Confidence is not about being perfect. It’s about believing you are good enough.",
      "author": "- Unknown"
    },
    {"quote": "Your only limit is your mind.", "author": "- Unknown"},
    {"quote": "If you can dream it, you can do it.", "author": "- Walt Disney"},
    {
      "quote": "You are more than capable of achieving what you desire.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is a skill, and like any skill, it can be developed with practice.",
      "author": "- Unknown"
    },
    {
      "quote": "You don’t have to be perfect to be amazing.",
      "author": "- Unknown"
    },
    {
      "quote": "When you have confidence, you can accomplish anything.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence doesn’t come from always being right, but from not fearing to be wrong.",
      "author": "- Peter T. Mcintyre"
    },
    {
      "quote":
          "Confidence is the key to success. Trust in yourself, and you'll make it.",
      "author": "- Unknown"
    },
    {"quote": "With confidence, you are unstoppable.", "author": "- Unknown"},
    {
      "quote":
          "Confidence isn’t thinking you’re better than everyone else. It’s knowing you don’t have to compare yourself to anyone at all.",
      "author": "- Unknown"
    },
    {
      "quote":
          "You are allowed to be both a masterpiece and a work in progress, simultaneously.",
      "author": "- Sophia Bush"
    },
    {
      "quote": "Confidence comes from discipline and training.",
      "author": "- Robert Kiyosaki"
    },
    {
      "quote":
          "Confidence is a reflection of how you feel about yourself, not about how others feel about you.",
      "author": "- Unknown"
    },
    {
      "quote": "The difference between you and them is confidence.",
      "author": "- Unknown"
    },
    {
      "quote":
          "A person who has confidence in themselves is the most powerful person in the room.",
      "author": "- Unknown"
    },
    {
      "quote": "Confidence is a silent whisper that says, 'I can do this.'",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is like a muscle. The more you use it, the stronger it gets.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence doesn’t mean you’re always right. It means you’re okay with being wrong.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is about taking ownership of your life and choosing to love the person you are becoming.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The way to stop being afraid is to stop thinking you need to be perfect.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is the result of consistently doing the right thing.",
      "author": "- Unknown"
    },
    {
      "quote": "Don't let anyone ever dull your sparkle.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is knowing who you are and not letting anyone else tell you otherwise.",
      "author": "- Unknown"
    },
    {
      "quote": "Doubt kills more dreams than failure ever will.",
      "author": "- Suzy Kassem"
    },
    {
      "quote":
          "When you’re confident, you attract people who appreciate and value you.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is a choice. It is not something that happens to you, but something that you actively create.",
      "author": "- Unknown"
    },
    {
      "quote":
          "You are allowed to be both a work in progress and a masterpiece at the same time.",
      "author": "- Sophia Bush"
    },
    {
      "quote":
          "Confidence is not 'they will like me'. Confidence is 'I’ll be fine if they don’t'.",
      "author": "- Christina Grimmie"
    },
    {
      "quote":
          "Believe in your infinite potential. Your only limitations are those you set upon yourself.",
      "author": "- Roy T. Bennett"
    },
    {
      "quote": "Nothing can dim the light that shines from within.",
      "author": "- Maya Angelou"
    },
    {
      "quote": "If you don’t believe in yourself, who will?",
      "author": "- Unknown"
    },
    {
      "quote": "True confidence leaves no room for doubt.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence is like a muscle, the more you use it, the stronger it gets.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence comes from being prepared and knowing what you're capable of.",
      "author": "- Unknown"
    },
    {
      "quote":
          "You are more than capable of achieving what you are aiming for.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Confidence comes from not fearing failure but from knowing that you will learn from it.",
      "author": "- Unknown"
    },
    {
      "quote": "Confidence is key to unlocking your full potential.",
      "author": "- Unknown"
    },
    {
      "quote": "Confidence is the foundation for success.",
      "author": "- Unknown"
    },
    {
      "quote": "Believe in yourself, and you’ll be unstoppable.",
      "author": "- Unknown"
    }
  ];
  int currentIndexqc = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqc = prefs.getInt('currentIndexqc') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqc', currentIndexqc);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          // LEADING ===============================================================================
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
                    CupertinoPageRoute(builder: (context) => CategoryQuote()),
                    (Route<dynamic> route) => false);
              }),
          // LEADING ===============================================================================

          // MIDDLE ===============================================================================
          middle: Text(
            'Confidence',
            style: TextStyle(
              color: Color(0xFFD404040),
              letterSpacing: 1.2,
              height: 1.5,
            ),
          ),
          // MIDDLE ===============================================================================

          // TRAILING ===============================================================================
          trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(
                CupertinoIcons.settings,
                size: 20,
                color: Color(0xFF1A120B),
              ),
              onPressed: () {
                lastPage = Confident();
                Navigator.pushReplacement(context,
                    CupertinoPageRoute(builder: (context) => Settings()));
              }),
          // TRAILING ===============================================================================
        ),
        child: WillPopScope(
          onWillPop: () async {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (context) => CategoryQuote()),
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
                            quotes[currentIndexqc]["quote"]!,
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
                        quotes[currentIndexqc]["author"]!,
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
                                          currentIndexqc =
                                              (currentIndexqc - 1) %
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
                                          currentIndexqc =
                                              (currentIndexqc + 1) %
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
                                        currentIndexqc = (currentIndexqc - 1) %
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
                                        currentIndexqc = (currentIndexqc + 1) %
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
