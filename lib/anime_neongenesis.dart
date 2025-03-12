import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Neongenesis extends StatefulWidget {
  const Neongenesis({super.key});

  @override
  State<Neongenesis> createState() => _NeongenesisState();
}

class _NeongenesisState extends State<Neongenesis> {
  List<Map<String, String>> quotes = [
    {
      "quote": "I mustn't run away, I mustn't run away, I mustn't run away.",
      "author": "- Shinji Ikari"
    },
    {
      "quote":
          "The pain of not knowing what you’re supposed to do… that’s the hardest part of growing up.",
      "author": "- Shinji Ikari"
    },
    {
      "quote":
          "I don't know what you're talking about. I just know that I want to be with you.",
      "author": "- Asuka Langley Soryu"
    },
    {
      "quote":
          "The end of the world will not be an ending. It will be an awakening.",
      "author": "- Gendo Ikari"
    },
    {
      "quote":
          "I am the one who chooses my own life. I will never be dictated to.",
      "author": "- Rei Ayanami"
    },
    {
      "quote":
          "I don't really care whether the world ends or not. I just don't want to be alone.",
      "author": "- Shinji Ikari"
    },
    {
      "quote": "I don’t understand. Why did I have to be born into this world?",
      "author": "- Shinji Ikari"
    },
    {
      "quote":
          "We are all running away from something, running away from our own feelings.",
      "author": "- Misato Katsuragi"
    },
    {
      "quote":
          "The world will continue as it always has. I will continue to be who I am.",
      "author": "- Rei Ayanami"
    },
    {
      "quote": "Sometimes you have to burn a bridge to move forward.",
      "author": "- Misato Katsuragi"
    },
    {
      "quote":
          "You should learn that to be loved, you must first love yourself.",
      "author": "- Kaworu Nagisa"
    },
    {
      "quote":
          "Humans don’t care for each other, they only seek their own satisfaction. You can’t really say you care for others unless you care for yourself first.",
      "author": "- Gendo Ikari"
    },
    {
      "quote":
          "People’s hearts are fragile. The slightest touch can make them crumble.",
      "author": "- Rei Ayanami"
    },
    {
      "quote":
          "In this world, it’s either kill or be killed. That’s just how it works.",
      "author": "- Asuka Langley Soryu"
    },
    {
      "quote":
          "You can't run away from yourself. You're just running away from the truth.",
      "author": "- Shinji Ikari"
    },
    {
      "quote":
          "There is no escape. You can only survive. Even if you die, nothing really changes.",
      "author": "- Gendo Ikari"
    },
    {
      "quote":
          "If you can’t understand others, then you’ll never be understood yourself.",
      "author": "- Misato Katsuragi"
    },
    {
      "quote": "When you’re in a battle, there’s no such thing as going back.",
      "author": "- Shinji Ikari"
    },
    {
      "quote": "It’s not about winning. It’s about surviving.",
      "author": "- Asuka Langley Soryu"
    },
    {
      "quote": "This is not a dream. This is not an illusion. This is reality.",
      "author": "- Rei Ayanami"
    },
    {
      "quote":
          "To live is to suffer. But to survive… that's another thing entirely.",
      "author": "- Shinji Ikari"
    },
    {
      "quote":
          "I have nothing to be proud of. I’ve done nothing but cause pain and suffering for the people around me.",
      "author": "- Shinji Ikari"
    },
    {
      "quote":
          "Why do you fight? For love? For pride? For honor? Or because you have no other choice?",
      "author": "- Kaworu Nagisa"
    },
    {
      "quote":
          "You cannot live by someone else’s rules. You have to create your own.",
      "author": "- Misato Katsuragi"
    },
    {
      "quote":
          "People are always trying to escape their lives. But running away doesn’t help. You have to face your own soul.",
      "author": "- Gendo Ikari"
    },
    {
      "quote":
          "In the end, we all have to learn how to love and accept ourselves.",
      "author": "- Rei Ayanami"
    },
    {
      "quote":
          "The world isn’t kind. It never was. It’s not about being nice—it’s about surviving.",
      "author": "- Asuka Langley Soryu"
    },
    {
      "quote":
          "If you're going to continue running away, just know that you’ll never be able to outrun your own mind.",
      "author": "- Shinji Ikari"
    },
    {
      "quote":
          "The only way to save the world is to accept your own limitations.",
      "author": "- Gendo Ikari"
    },
    {
      "quote": "Don’t live for the past. Live for the future.",
      "author": "- Misato Katsuragi"
    },
    {
      "quote":
          "I can’t make you happy. But I can teach you how to be happy on your own.",
      "author": "- Kaworu Nagisa"
    },
    {
      "quote": "The only way to escape is to accept the truth about yourself.",
      "author": "- Rei Ayanami"
    },
    {
      "quote":
          "There’s no need to be afraid of the end of the world. It’s just a new beginning.",
      "author": "- Kaworu Nagisa"
    },
    {
      "quote":
          "What are you living for? To escape? To escape from your fears? Or are you living for something more?",
      "author": "- Shinji Ikari"
    },
    {
      "quote": "If you don’t fight, you won’t survive. It’s as simple as that.",
      "author": "- Asuka Langley Soryu"
    },
    {
      "quote":
          "I can’t forgive myself for not being able to protect the people I love.",
      "author": "- Shinji Ikari"
    },
    {
      "quote":
          "Sometimes, it’s not about finding answers. It’s about living with the questions.",
      "author": "- Gendo Ikari"
    },
    {
      "quote": "I don’t need anyone to love me. I don’t need anyone to care.",
      "author": "- Rei Ayanami"
    },
    {
      "quote":
          "You can’t understand everything. Sometimes, you just have to accept things as they are.",
      "author": "- Misato Katsuragi"
    }
  ];
  int currentIndexneongenesis = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexneongenesis = prefs.getInt('currentIndexneongenesis') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexneongenesis', currentIndexneongenesis);
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
            'Neon Genesis',
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
                lastPage = Neongenesis();
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
                            quotes[currentIndexneongenesis]["quote"]!,
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
                        quotes[currentIndexneongenesis]["author"]!,
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
                                          currentIndexneongenesis =
                                              (currentIndexneongenesis - 1) %
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
                                          currentIndexneongenesis =
                                              (currentIndexneongenesis + 1) %
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
                                        currentIndexneongenesis =
                                            (currentIndexneongenesis - 1) %
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
                                        currentIndexneongenesis =
                                            (currentIndexneongenesis + 1) %
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
