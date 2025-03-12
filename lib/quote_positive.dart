import 'package:ashborn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

class Positive extends StatefulWidget {
  const Positive({super.key});

  @override
  State<Positive> createState() => _PositiveState();
}

class _PositiveState extends State<Positive> {
  List<Map<String, String>> quotes = [
    {
      "quote": "Believe you can and you're halfway there.",
      "author": "- Theodore Roosevelt"
    },
    {
      "quote": "The only way to do great work is to love what you do.",
      "author": "- Steve Jobs"
    },
    {
      "quote":
          "Keep your face always toward the sunshine—and shadows will fall behind you.",
      "author": "- Walt Whitman"
    },
    {
      "quote":
          "Success is not the key to happiness. Happiness is the key to success.",
      "author": "- Albert Schweitzer"
    },
    {
      "quote": "The best way to predict the future is to create it.",
      "author": "- Abraham Lincoln"
    },
    {
      "quote":
          "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote":
          "You are never too old to set another goal or to dream a new dream.",
      "author": "- C.S. Lewis"
    },
    {
      "quote": "It always seems impossible until it’s done.",
      "author": "- Nelson Mandela"
    },
    {
      "quote":
          "The only limit to our realization of tomorrow is our doubts of today.",
      "author": "- Franklin D. Roosevelt"
    },
    {
      "quote": "Start where you are. Use what you have. Do what you can.",
      "author": "- Arthur Ashe"
    },
    {
      "quote":
          "The pessimist sees difficulty in every opportunity. The optimist sees opportunity in every difficulty.",
      "author": "- Winston Churchill"
    },
    {
      "quote": "Don’t watch the clock; do what it does. Keep going.",
      "author": "- Sam Levenson"
    },
    {
      "quote": "You miss 100% of the shots you don’t take.",
      "author": "- Wayne Gretzky"
    },
    {
      "quote": "Everything you can imagine is real.",
      "author": "- Pablo Picasso"
    },
    {
      "quote": "Act as if what you do makes a difference. It does.",
      "author": "- William James"
    },
    {
      "quote":
          "Success usually comes to those who are too busy to be looking for it.",
      "author": "- Henry David Thoreau"
    },
    {
      "quote": "Opportunities don't happen, you create them.",
      "author": "- Chris Grosser"
    },
    {
      "quote":
          "Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart.",
      "author": "- Roy T. Bennett"
    },
    {
      "quote":
          "You don’t have to be great to start, but you have to start to be great.",
      "author": "- Zig Ziglar"
    },
    {
      "quote":
          "Happiness is not something ready made. It comes from your own actions.",
      "author": "- Dalai Lama"
    },
    {
      "quote":
          "Success is not how high you have climbed, but how you make a positive difference to the world.",
      "author": "- Roy T. Bennett"
    },
    {
      "quote":
          "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
      "author": "- Christian D. Larson"
    },
    {
      "quote": "When you have a dream, you've got to grab it and never let go.",
      "author": "- Carol Burnett"
    },
    {
      "quote":
          "What you get by achieving your goals is not as important as what you become by achieving your goals.",
      "author": "- Zig Ziglar"
    },
    {"quote": "If you can dream it, you can do it.", "author": "- Walt Disney"},
    {
      "quote": "Do one thing every day that scares you.",
      "author": "- Eleanor Roosevelt"
    },
    {
      "quote":
          "I am not a product of my circumstances. I am a product of my decisions.",
      "author": "- Stephen R. Covey"
    },
    {
      "quote": "To live a creative life, we must lose our fear of being wrong.",
      "author": "- Joseph Chilton Pearce"
    },
    {
      "quote":
          "It’s not whether you get knocked down, it’s whether you get up.",
      "author": "- Vince Lombardi"
    },
    {
      "quote": "Everything has beauty, but not everyone sees it.",
      "author": "- Confucius"
    },
    {
      "quote":
          "The only way to achieve the impossible is to believe it is possible.",
      "author": "- Charles Kingsleigh"
    },
    {
      "quote": "Be the change that you wish to see in the world.",
      "author": "- Mahatma Gandhi"
    },
    {
      "quote": "Don’t wait. The time will never be just right.",
      "author": "- Napoleon Hill"
    },
    {
      "quote": "You don’t have to be perfect to be amazing.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Try not to become a man of success, but rather try to become a man of value.",
      "author": "- Albert Einstein"
    },
    {
      "quote": "Success is not in what you have, but who you are.",
      "author": "- Bo Bennett"
    },
    {
      "quote":
          "The only place where success comes before work is in the dictionary.",
      "author": "- Vidal Sassoon"
    },
    {
      "quote": "Everything you need is already inside you.",
      "author": "- Bill Bowerman"
    },
    {
      "quote": "A person who never made a mistake never tried anything new.",
      "author": "- Albert Einstein"
    },
    {
      "quote": "In the middle of difficulty lies opportunity.",
      "author": "- Albert Einstein"
    },
    {
      "quote":
          "It does not matter how slowly you go as long as you do not stop.",
      "author": "- Confucius"
    },
    {
      "quote":
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      "author": "- Winston Churchill"
    },
    {
      "quote": "Don’t be afraid to give up the good to go for the great.",
      "author": "- John D. Rockefeller"
    },
    {
      "quote": "You must be the change you wish to see in the world.",
      "author": "- Mahatma Gandhi"
    },
    {
      "quote":
          "The future belongs to those who believe in the beauty of their dreams.",
      "author": "- Eleanor Roosevelt"
    },
    {
      "quote": "Life is what happens when you're busy making other plans.",
      "author": "- John Lennon"
    },
    {
      "quote": "You only live once, but if you do it right, once is enough.",
      "author": "- Mae West"
    },
    {
      "quote": "We may encounter many defeats, but we must not be defeated.",
      "author": "- Maya Angelou"
    },
    {
      "quote":
          "Life isn’t about waiting for the storm to pass, it’s about learning how to dance in the rain.",
      "author": "- Unknown"
    },
    {
      "quote":
          "I am not afraid of tomorrow, for I have seen yesterday and I love today.",
      "author": "- William Allen White"
    },
    {
      "quote": "Success is a journey, not a destination.",
      "author": "- Arthur Ashe"
    },
    {
      "quote":
          "The best way to get started is to quit talking and begin doing.",
      "author": "- Walt Disney"
    },
    {
      "quote":
          "Hardships often prepare ordinary people for an extraordinary destiny.",
      "author": "- C.S. Lewis"
    },
    {
      "quote": "The only way to do great work is to love what you do.",
      "author": "- Steve Jobs"
    },
    {"quote": "Dream big and dare to fail.", "author": "- Norman Vaughan"},
    {
      "quote": "There are no shortcuts to any place worth going.",
      "author": "- Beverly Sills"
    },
    {
      "quote": "Success is not in what you have, but who you are.",
      "author": "- Bo Bennett"
    },
    {
      "quote": "Don’t count the days, make the days count.",
      "author": "- Muhammad Ali"
    },
    {"quote": "Don’t wait for opportunity. Create it.", "author": "- Unknown"},
    {
      "quote":
          "The difference between who you are and who you want to be is what you do.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Happiness is not something you postpone for the future; it is something you design for the present.",
      "author": "- Jim Rohn"
    },
    {
      "quote": "Act as if what you do makes a difference. It does.",
      "author": "- William James"
    },
    {
      "quote": "A journey of a thousand miles begins with a single step.",
      "author": "- Lao Tzu"
    },
    {
      "quote": "Life is 10% what happens to us and 90% how we react to it.",
      "author": "- Charles R. Swindoll"
    },
    {
      "quote":
          "Success is the sum of small efforts, repeated day in and day out.",
      "author": "- Robert Collier"
    },
    {
      "quote":
          "It does not matter how slowly you go as long as you do not stop.",
      "author": "- Confucius"
    },
    {
      "quote": "You miss 100% of the shots you don’t take.",
      "author": "- Wayne Gretzky"
    },
    {
      "quote": "The future depends on what you do today.",
      "author": "- Mahatma Gandhi"
    },
    {
      "quote": "Whatever you are, be a good one.",
      "author": "- Abraham Lincoln"
    },
    {
      "quote":
          "If you want to live a happy life, tie it to a goal, not to people or things.",
      "author": "- Albert Einstein"
    },
    {
      "quote": "Don’t wait. The time will never be just right.",
      "author": "- Napoleon Hill"
    },
    {
      "quote":
          "The road to success and the road to failure are almost exactly the same.",
      "author": "- Colin R. Davis"
    },
    {
      "quote": "Success is how high you bounce when you hit bottom.",
      "author": "- George S. Patton"
    },
    {
      "quote": "Do what you can with all you have, wherever you are.",
      "author": "- Theodore Roosevelt"
    },
    {
      "quote":
          "Success usually comes to those who are too busy to be looking for it.",
      "author": "- Henry David Thoreau"
    },
    {
      "quote": "Don’t be afraid to give up the good to go for the great.",
      "author": "- John D. Rockefeller"
    },
    {
      "quote":
          "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
      "author": "- Christian D. Larson"
    },
    {
      "quote": "It always seems impossible until it’s done.",
      "author": "- Nelson Mandela"
    },
    {
      "quote": "Act as if what you do makes a difference. It does.",
      "author": "- William James"
    }
  ];
  int currentIndexqpp = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqpp = prefs.getInt('currentIndexqpp') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqpp', currentIndexqpp);
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
            'Positive',
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
                lastPage = Positive();
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
                            quotes[currentIndexqpp]["quote"]!,
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
                        quotes[currentIndexqpp]["author"]!,
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
                                          currentIndexqpp =
                                              (currentIndexqpp - 1) %
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
                                          currentIndexqpp =
                                              (currentIndexqpp + 1) %
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
                                        currentIndexqpp =
                                            (currentIndexqpp - 1) %
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
                                        currentIndexqpp =
                                            (currentIndexqpp + 1) %
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
