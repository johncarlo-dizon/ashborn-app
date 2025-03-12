import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Attacktitan extends StatefulWidget {
  const Attacktitan({super.key});

  @override
  State<Attacktitan> createState() => _AttacktitanState();
}

class _AttacktitanState extends State<Attacktitan> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "If you win, you live. If you lose, you die. If you don't fight, you can't win.",
      "author": "- Eren Yeager"
    },
    {
      "quote": "The world is merciless, and it's also very beautiful.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "People who can't throw something important away, can never hope to change anything.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "The world outside is vast and full of wonder, and that’s what makes the struggle worth it.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "The only thing we're allowed to do is believe that we won't regret the choice we made.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "We don’t need a world where only the strongest survive. What we need is a world where everyone has a place.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "No matter how hard or impossible it is, never lose sight of your goal.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "If you don’t fight, you can’t win. The only thing we can do is keep pushing forward.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "The difference between our ideals and reality is not something we should be ashamed of. It’s the reason we fight.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "We are not free, but freedom is worth fighting for, even if it costs everything.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "We don’t know if we’ll live to see tomorrow, but we know that today, we fought for what we believe in.",
      "author": "- Levi Ackerman"
    },
    {
      "quote":
          "It's not about being a hero. It's about choosing to protect those who can't protect themselves.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "The only thing that’s certain is that we are alive, and that gives us the power to fight.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "Survive. That’s the first step toward freedom. Without survival, everything else is meaningless.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "If you're going to die anyway, then you might as well make your life meaningful.",
      "author": "- Jean Kirstein"
    },
    {
      "quote":
          "Humans are weak. But our hearts are stronger than anything else.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "Our enemies are not the Titans. They are the walls we built around ourselves.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "The moment you give up, you’re already dead. Keep going, even when everything seems hopeless.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "Don’t think about what’s impossible. Think about what you can do now.",
      "author": "- Levi Ackerman"
    },
    {
      "quote":
          "When you look at the world, it’s a cruel place. But it’s also filled with beauty if you look for it.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "What’s important is not the size of your body, but the size of your heart.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "Everyone dies eventually, but it’s what we do in the time we have that gives our lives meaning.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "There’s no meaning in a life without struggle. Embrace the pain, because it’s what makes you stronger.",
      "author": "- Levi Ackerman"
    },
    {
      "quote":
          "Freedom is not given. It’s taken. And it’s taken by those brave enough to fight for it.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "Sometimes, the best way to fight is to keep moving forward, no matter the cost.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "The truth is cruel, but it’s also the only thing that can set us free.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "The future isn’t written in stone. It’s created by the actions we take today.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "The only way to deal with fear is to confront it head on, and show it no mercy.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "Victory doesn’t come from not losing. It comes from standing up every time you fall.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "Humanity's greatest strength lies not in our ability to fight, but in our capacity to endure.",
      "author": "- Levi Ackerman"
    },
    {
      "quote":
          "Your choices define you. Every action you take leads you closer to your goal—or further away from it.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "We all have our limits, but as long as you keep going, you'll find your way past them.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "When you’re on the brink of death, you realize how precious every breath really is.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "Nothing lasts forever, but that doesn’t mean we shouldn’t fight for what matters.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "The world is cruel, but that doesn’t mean you should stop fighting for a better future.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "Freedom isn’t just about breaking free from physical chains. It’s about breaking the mental chains that hold us back.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "To be free, you must accept the responsibility that comes with it.",
      "author": "- Armin Arlert"
    },
    {
      "quote":
          "If you want to protect someone, you have to be strong. Not just in body, but in mind and soul.",
      "author": "- Mikasa Ackerman"
    },
    {
      "quote":
          "The only way to survive is to move forward. One step at a time, no matter how dark the path may be.",
      "author": "- Eren Yeager"
    },
    {
      "quote":
          "Sometimes, you have to make sacrifices. But it’s for the greater good, for humanity’s future.",
      "author": "- Armin Arlert"
    }
  ];
  int currentIndexattacktitan = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexattacktitan = prefs.getInt('currentIndexattacktitan') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexattacktitan', currentIndexattacktitan);
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
            'Attack on Titan',
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
                lastPage = Attacktitan();
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
                            quotes[currentIndexattacktitan]["quote"]!,
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
                        quotes[currentIndexattacktitan]["author"]!,
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
                                          currentIndexattacktitan =
                                              (currentIndexattacktitan - 1) %
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
                                          currentIndexattacktitan =
                                              (currentIndexattacktitan + 1) %
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
                                        currentIndexattacktitan =
                                            (currentIndexattacktitan - 1) %
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
                                        currentIndexattacktitan =
                                            (currentIndexattacktitan + 1) %
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
