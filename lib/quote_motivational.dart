import 'package:ashborn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

class Motivational extends StatefulWidget {
  const Motivational({super.key});

  @override
  State<Motivational> createState() => _MotivationalState();
}

class _MotivationalState extends State<Motivational> {
  List<Map<String, String>> quotes = [
    {
      "quote": "The only way to do great work is to love what you do.",
      "author": "- Steve Jobs"
    },
    {
      "quote":
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      "author": "- Winston Churchill"
    },
    {
      "quote": "Believe you can and you're halfway there.",
      "author": "- Theodore Roosevelt"
    },
    {
      "quote":
          "It does not matter how slowly you go as long as you do not stop.",
      "author": "- Confucius"
    },
    {
      "quote":
          "The future belongs to those who believe in the beauty of their dreams.",
      "author": "- Eleanor Roosevelt"
    },
    {
      "quote": "You miss 100% of the shots you don't take.",
      "author": "- Wayne Gretzky"
    },
    {
      "quote":
          "Do not wait to strike till the iron is hot, but make it hot by striking.",
      "author": "- William Butler Yeats"
    },
    {
      "quote": "Everything you can imagine is real.",
      "author": "- Pablo Picasso"
    },
    {
      "quote":
          "The only limit to our realization of tomorrow is our doubts of today.",
      "author": "- Franklin D. Roosevelt"
    },
    {
      "quote":
          "Success usually comes to those who are too busy to be looking for it.",
      "author": "- Henry David Thoreau"
    },
    {
      "quote": "Do what you can, with what you have, where you are.",
      "author": "- Theodore Roosevelt"
    },
    {
      "quote":
          "The harder you work for something, the greater you’ll feel when you achieve it.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Success is the sum of small efforts, repeated day in and day out.",
      "author": "- Robert Collier"
    },
    {
      "quote": "It always seems impossible until it's done.",
      "author": "- Nelson Mandela"
    },
    {
      "quote": "Don’t watch the clock; do what it does. Keep going.",
      "author": "- Sam Levenson"
    },
    {
      "quote": "In the middle of every difficulty lies opportunity.",
      "author": "- Albert Einstein"
    },
    {
      "quote": "If you’re going through hell, keep going.",
      "author": "- Winston Churchill"
    },
    {
      "quote": "The best way to predict your future is to create it.",
      "author": "- Abraham Lincoln"
    },
    {
      "quote": "Act as if what you do makes a difference. It does.",
      "author": "- William James"
    },
    {
      "quote":
          "Success is not how high you have climbed, but how you make a positive difference to the world.",
      "author": "- Roy T. Bennett"
    },
    {
      "quote":
          "Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart.",
      "author": "- Roy T. Bennett"
    },
    {
      "quote":
          "It does not matter how slowly you go as long as you do not stop.",
      "author": "- Confucius"
    },
    {
      "quote": "Success is not in what you have, but who you are.",
      "author": "- Bo Bennett"
    },
    {
      "quote": "The best revenge is massive success.",
      "author": "- Frank Sinatra"
    },
    {
      "quote": "The way to get started is to quit talking and begin doing.",
      "author": "- Walt Disney"
    },
    {
      "quote":
          "The only place where success comes before work is in the dictionary.",
      "author": "- Vidal Sassoon"
    },
    {
      "quote": "I find that the harder I work, the more luck I seem to have.",
      "author": "- Thomas Jefferson"
    },
    {
      "quote": "We may encounter many defeats, but we must not be defeated.",
      "author": "- Maya Angelou"
    },
    {
      "quote": "Don’t wait. The time will never be just right.",
      "author": "- Napoleon Hill"
    },
    {
      "quote":
          "You must expect great things of yourself before you can do them.",
      "author": "- Michael Jordan"
    },
    {
      "quote": "Do one thing every day that scares you.",
      "author": "- Eleanor Roosevelt"
    },
    {
      "quote": "If you want to lift yourself up, lift up someone else.",
      "author": "- Booker T. Washington"
    },
    {
      "quote":
          "The only way to achieve the impossible is to believe it is possible.",
      "author": "- Charles Kingsleigh"
    },
    {
      "quote":
          "Hardships often prepare ordinary people for an extraordinary destiny.",
      "author": "- C.S. Lewis"
    },
    {
      "quote": "The key to success is to focus on goals, not obstacles.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Your time is limited, so don’t waste it living someone else’s life.",
      "author": "- Steve Jobs"
    },
    {
      "quote":
          "The man who has confidence in himself gains the confidence of others.",
      "author": "- Hasidic Proverb"
    },
    {
      "quote":
          "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote": "Doubt kills more dreams than failure ever will.",
      "author": "- Suzy Kassem"
    },
    {
      "quote": "We can't help everyone, but everyone can help someone.",
      "author": "- Ronald Reagan"
    },
    {
      "quote":
          "If you’re not willing to risk the usual, you will have to settle for the ordinary.",
      "author": "- Jim Rohn"
    },
    {
      "quote":
          "The difference between who you are and who you want to be is what you do.",
      "author": "- Unknown"
    },
    {
      "quote": "Everything you’ve ever wanted is on the other side of fear.",
      "author": "- George Addair"
    },
    {
      "quote": "To live a creative life, we must lose our fear of being wrong.",
      "author": "- Joseph Chilton Pearce"
    },
    {
      "quote":
          "You can never cross the ocean until you have the courage to lose sight of the shore.",
      "author": "- Christopher Columbus"
    },
    {
      "quote":
          "Do not wait to strike till the iron is hot, but make it hot by striking.",
      "author": "- William Butler Yeats"
    },
    {
      "quote": "Life is what happens when you’re busy making other plans.",
      "author": "- John Lennon"
    },
    {
      "quote": "You can never plan the future by the past.",
      "author": "- Edmund Burke"
    },
    {
      "quote":
          "The only limit to our realization of tomorrow is our doubts of today.",
      "author": "- Franklin D. Roosevelt"
    },
    {
      "quote":
          "Keep your face always toward the sunshine—and shadows will fall behind you.",
      "author": "- Walt Whitman"
    },
    {
      "quote": "It always seems impossible until it’s done.",
      "author": "- Nelson Mandela"
    },
    {
      "quote": "We may encounter many defeats but we must not be defeated.",
      "author": "- Maya Angelou"
    },
    {
      "quote":
          "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote":
          "The future belongs to those who believe in the beauty of their dreams.",
      "author": "- Eleanor Roosevelt"
    },
    {"quote": "Limit your always and your nevers.", "author": "- Amy Poehler"},
    {
      "quote": "You must be the change you wish to see in the world.",
      "author": "- Mahatma Gandhi"
    },
    {
      "quote":
          "In the end, we will remember not the words of our enemies, but the silence of our friends.",
      "author": "- Martin Luther King Jr."
    },
    {
      "quote":
          "You don’t have to be great to start, but you have to start to be great.",
      "author": "- Zig Ziglar"
    },
    {
      "quote": "The best way to predict the future is to create it.",
      "author": "- Abraham Lincoln"
    },
    {
      "quote":
          "If you want to go fast, go alone. If you want to go far, go together.",
      "author": "- African Proverb"
    },
    {
      "quote":
          "Challenges are what make life interesting and overcoming them is what makes life meaningful.",
      "author": "- Joshua Marine"
    },
    {
      "quote":
          "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote":
          "It’s not whether you get knocked down, it’s whether you get up.",
      "author": "- Vince Lombardi"
    },
    {
      "quote":
          "In three words I can sum up everything I’ve learned about life: it goes on.",
      "author": "- Robert Frost"
    },
    {
      "quote": "Be yourself; everyone else is already taken.",
      "author": "- Oscar Wilde"
    },
    {
      "quote":
          "Two roads diverged in a wood, and I— I took the one less traveled by, And that has made all the difference.",
      "author": "- Robert Frost"
    },
    {
      "quote": "What we achieve inwardly will change outer reality.",
      "author": "- Plutarch"
    },
    {
      "quote":
          "What you get by achieving your goals is not as important as what you become by achieving your goals.",
      "author": "- Zig Ziglar"
    },
    {
      "quote":
          "The purpose of life is not to be happy, but to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote": "The only way to do great work is to love what you do.",
      "author": "- Steve Jobs"
    },
    {
      "quote":
          "Be not afraid of life. Believe that life is worth living, and your belief will help create the fact.",
      "author": "- William James"
    },
    {
      "quote":
          "The future belongs to those who believe in the beauty of their dreams.",
      "author": "- Eleanor Roosevelt"
    },
    {
      "quote": "Everything you’ve ever wanted is on the other side of fear.",
      "author": "- George Addair"
    },
    {
      "quote":
          "Success is the sum of small efforts, repeated day in and day out.",
      "author": "- Robert Collier"
    },
    {
      "quote": "Start where you are. Use what you have. Do what you can.",
      "author": "- Arthur Ashe"
    },
    {
      "quote": "Believe you can and you're halfway there.",
      "author": "- Theodore Roosevelt"
    },
    {
      "quote": "Opportunities don't happen, you create them.",
      "author": "- Chris Grosser"
    },
    {
      "quote": "Action is the foundational key to all success.",
      "author": "- Pablo Picasso"
    },
    {
      "quote":
          "The future belongs to those who believe in the beauty of their dreams.",
      "author": "- Eleanor Roosevelt"
    }
  ];

  int currentIndexqm = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqm = prefs.getInt('currentIndexqm') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqm', currentIndexqm);
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
            'Motivational',
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
                lastPage = Motivational();
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
                            quotes[currentIndexqm]["quote"]!,
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
                        quotes[currentIndexqm]["author"]!,
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
                                          currentIndexqm =
                                              (currentIndexqm - 1) %
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
                                          currentIndexqm =
                                              (currentIndexqm + 1) %
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
                                        currentIndexqm = (currentIndexqm - 1) %
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
                                        currentIndexqm = (currentIndexqm + 1) %
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
