import 'package:ashborn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

class Sad extends StatefulWidget {
  const Sad({super.key});

  @override
  State<Sad> createState() => _SadState();
}

class _SadState extends State<Sad> {
  List<Map<String, String>> quotes = [
    {
      "quote": "It’s hard to forget someone who gave you so much to remember.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Sometimes, you have to give up on people. Not because you don’t care, but because they don’t.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The saddest thing about love is that not only that it cannot last forever, but that heartbreak is soon forgotten.",
      "author": "- Unknown"
    },
    {
      "quote": "Tears come from the heart and not from the brain.",
      "author": "- Leonardo da Vinci"
    },
    {
      "quote":
          "The walls we build around us to keep sadness out also keeps out the joy.",
      "author": "- Jim Rohn"
    },
    {
      "quote": "The pain of parting is nothing to the joy of meeting again.",
      "author": "- Charles Dickens"
    },
    {
      "quote":
          "You can’t protect yourself from sadness without protecting yourself from happiness.",
      "author": "- Jonathan Safran Foer"
    },
    {
      "quote": "Sadness flies away on the wings of time.",
      "author": "- Jean de La Fontaine"
    },
    {
      "quote":
          "The greatest pain that comes from love is loving someone you can never have.",
      "author": "- Unknown"
    },
    {
      "quote": "Tears are the silent language of grief.",
      "author": "- Voltaire"
    },
    {
      "quote":
          "Sometimes, the person you’d take a bullet for is the one behind the trigger.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Nothing hurts more than being disappointed by the one person you thought would never hurt you.",
      "author": "- Unknown"
    },
    {
      "quote":
          "I wish I could go back to the day I met you and just walk away.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Sometimes, the hardest thing isn’t letting go but learning to start over.",
      "author": "- Nicole Sobon"
    },
    {
      "quote":
          "You never know how strong you are until being strong is your only choice.",
      "author": "- Bob Marley"
    },
    {
      "quote": "There is no remedy for love but to love more.",
      "author": "- Henry David Thoreau"
    },
    {
      "quote":
          "The most painful goodbyes are the ones that are never said and never explained.",
      "author": "- Unknown"
    },
    {
      "quote": "Sadness is but a wall between two gardens.",
      "author": "- Kahlil Gibran"
    },
    {
      "quote":
          "It's hard to move on when you feel like you've lost the one person who made your world a better place.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Sometimes, the best way to get someone out of your mind is to keep them out of your heart.",
      "author": "- Unknown"
    },
    {
      "quote":
          "One of the hardest things in life is watching the person you love, love someone else.",
      "author": "- Unknown"
    },
    {
      "quote":
          "I wanted to tell you something, but I think I lost the courage to do so.",
      "author": "- Unknown"
    },
    {
      "quote": "It's sad when someone you know becomes someone you knew.",
      "author": "- Henry Rollins"
    },
    {
      "quote": "I miss the days when I was happy and knew it.",
      "author": "- Unknown"
    },
    {
      "quote": "Grief is the price we pay for love.",
      "author": "- Queen Elizabeth II"
    },
    {
      "quote":
          "It’s not the goodbye that hurts, but the flashbacks that follow.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Sometimes, the person you want the most is the person you’re best without.",
      "author": "- Unknown"
    },
    {
      "quote": "I’ve never felt this way before, and it scares me.",
      "author": "- Unknown"
    },
    {
      "quote": "The hardest part of moving forward is not looking back.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The worst feeling is when someone makes you feel special, then suddenly leaves you hanging.",
      "author": "- Unknown"
    },
    {
      "quote": "I hate being broken. I hate that I cannot go back.",
      "author": "- Unknown"
    },
    {"quote": "I don’t know how to make the pain stop.", "author": "- Unknown"},
    {
      "quote":
          "Sometimes, you just need to be alone and think about everything that’s happened.",
      "author": "- Unknown"
    },
    {
      "quote": "No one will ever know the amount of pain I’ve been through.",
      "author": "- Unknown"
    },
    {
      "quote": "People change, and that’s the hardest part to accept.",
      "author": "- Unknown"
    },
    {
      "quote":
          "It’s easy to cry when you realize that everyone you love will reject you or die.",
      "author": "- Chuck Palahniuk"
    },
    {
      "quote":
          "There are moments in life that you just want to forget, but they stay with you forever.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The worst kind of pain is when you're smiling just to stop the tears from falling.",
      "author": "- Unknown"
    },
    {
      "quote": "Sometimes, we just need someone to listen, not to give advice.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The greatest pain that comes from love is loving someone you can never have.",
      "author": "- Unknown"
    },
    {
      "quote":
          "I wish I could just sleep and not wake up, just to forget everything for a while.",
      "author": "- Unknown"
    },
    {
      "quote": "It’s hard to forget someone who gave you so much to remember.",
      "author": "- Unknown"
    },
    {"quote": "The truth hurts, but the lies kill.", "author": "- Unknown"},
    {
      "quote":
          "Sometimes, the person you least expect becomes the one you can't live without.",
      "author": "- Unknown"
    },
    {
      "quote": "It’s sad to know that no one really cares.",
      "author": "- Unknown"
    },
    {
      "quote": "You left a mark in my heart that no one can ever erase.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The greatest tragedy in life is not death, but what dies inside us while we live.",
      "author": "- Norman Cousins"
    },
    {
      "quote": "I wish you could see yourself the way I see you.",
      "author": "- Unknown"
    },
    {
      "quote":
          "You were never meant to be in my life, but somehow you still were.",
      "author": "- Unknown"
    },
    {
      "quote": "It’s the people you love the most that hurt you the deepest.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The worst thing is holding on to someone who doesn’t want to be held on to.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Sometimes you have to forget what you feel and remember what you deserve.",
      "author": "- Unknown"
    },
    {
      "quote": "The more I try to forget you, the more I remember you.",
      "author": "- Unknown"
    },
    {
      "quote": "What’s the point of holding on when they let go?",
      "author": "- Unknown"
    },
    {
      "quote":
          "The hardest part is waking up, knowing that the person you loved is no longer with you.",
      "author": "- Unknown"
    },
    {
      "quote": "I miss the old days, when I was happy with myself.",
      "author": "- Unknown"
    },
    {
      "quote": "Loneliness is a sign you are in desperate need of yourself.",
      "author": "- Rupi Kaur"
    },
    {
      "quote":
          "The scariest thing is not the unknown, but the idea of losing everything you’ve ever known.",
      "author": "- Unknown"
    },
    {
      "quote": "I gave you all my love, but you took it for granted.",
      "author": "- Unknown"
    },
    {
      "quote": "Sometimes the hardest thing to do is to say goodbye.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The hardest part of letting go is realizing that the person you thought would always be there, is no longer.",
      "author": "- Unknown"
    },
    {"quote": "I am not okay, but I will be someday.", "author": "- Unknown"},
    {"quote": "We’re strangers again, and I hate it.", "author": "- Unknown"},
    {
      "quote": "It’s hard to love someone who doesn’t love you back.",
      "author": "- Unknown"
    },
    {
      "quote":
          "I think the hardest part of life is deciding who to give your love to.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Some days, I just want to forget about everything and start fresh.",
      "author": "- Unknown"
    },
    {
      "quote":
          "It’s hard to believe, but sometimes, people walk away from the people who care the most.",
      "author": "- Unknown"
    },
    {
      "quote": "The hardest part of life is losing people we love.",
      "author": "- Unknown"
    },
    {
      "quote":
          "It hurts the most when you’re ignored by someone you truly care about.",
      "author": "- Unknown"
    },
    {
      "quote": "If only I could take back the words I said to you.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Sometimes the right person at the wrong time can break your heart.",
      "author": "- Unknown"
    },
    {
      "quote":
          "I don't know what's worse: not being able to see you or not being able to forget you.",
      "author": "- Unknown"
    },
    {"quote": "The silence is so loud, it hurts.", "author": "- Unknown"},
    {
      "quote":
          "We don’t realize the significance of a moment until it becomes a memory.",
      "author": "- Unknown"
    }
  ];
  int currentIndexqs = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqs = prefs.getInt('currentIndexqs') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqss', currentIndexqs);
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
                    CupertinoPageRoute(builder: (context) => CategoryQuote()),
                    (Route<dynamic> route) => false);
              }),

          // MIDDLE ===============================================================================
          middle: Text(
            'Sad',
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
                lastPage = Sad();
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
                            quotes[currentIndexqs]["quote"]!,
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
                        quotes[currentIndexqs]["author"]!,
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
                                          currentIndexqs =
                                              (currentIndexqs - 1) %
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
                                          currentIndexqs =
                                              (currentIndexqs + 1) %
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
                                        currentIndexqs = (currentIndexqs - 1) %
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
                                        currentIndexqs = (currentIndexqs + 1) %
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
