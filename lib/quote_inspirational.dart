import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';
import 'settings.dart';

class InspiApp extends StatefulWidget {
  const InspiApp({super.key});

  @override
  State<InspiApp> createState() => _InspiAppState();
}

class _InspiAppState extends State<InspiApp> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "You are never too old to set another goal or to dream a new dream.",
      "author": "- C.S. Lewis"
    },
    {
      "quote": "Do what you can with all you have, wherever you are.",
      "author": "- Theodore Roosevelt"
    },
    {
      "quote": "Start where you are. Use what you have. Do what you can.",
      "author": "- Arthur Ashe"
    },
    {
      "quote": "The best way to predict the future is to create it.",
      "author": "- Abraham Lincoln"
    },
    {"quote": "Dream big and dare to fail.", "author": "- Norman Vaughan"},
    {
      "quote": "Don’t stop when you’re tired. Stop when you’re done.",
      "author": "- Unknown"
    },
    {
      "quote": "It always seems impossible until it’s done.",
      "author": "- Nelson Mandela"
    },
    {
      "quote":
          "The harder you work for something, the greater you’ll feel when you achieve it.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Success doesn’t come from what you do occasionally, it comes from what you do consistently.",
      "author": "- Marie Forleo"
    },
    {
      "quote": "Don’t wait. The time will never be just right.",
      "author": "- Napoleon Hill"
    },
    {
      "quote": "The journey of a thousand miles begins with one step.",
      "author": "- Lao Tzu"
    },
    {
      "quote":
          "Success is the sum of small efforts, repeated day in and day out.",
      "author": "- Robert Collier"
    },
    {
      "quote": "The way to get started is to quit talking and begin doing.",
      "author": "- Walt Disney"
    },
    {
      "quote": "Believe you can and you're halfway there.",
      "author": "- Theodore Roosevelt"
    },
    {
      "quote": "Do not wait for leaders; do it alone, person to person.",
      "author": "- Mother Teresa"
    },
    {
      "quote": "Everything you can imagine is real.",
      "author": "- Pablo Picasso"
    },
    {
      "quote": "The best revenge is massive success.",
      "author": "- Frank Sinatra"
    },
    {
      "quote":
          "Success is not the key to happiness. Happiness is the key to success.",
      "author": "- Albert Schweitzer"
    },
    {
      "quote": "Don’t be afraid to give up the good to go for the great.",
      "author": "- John D. Rockefeller"
    },
    {
      "quote":
          "It’s not whether you get knocked down, it’s whether you get up.",
      "author": "- Vince Lombardi"
    },
    {
      "quote":
          "Our greatest glory is not in never falling, but in rising every time we fall.",
      "author": "- Confucius"
    },
    {
      "quote": "Everything you’ve ever wanted is on the other side of fear.",
      "author": "- George Addair"
    },
    {
      "quote": "Opportunities don’t happen, you create them.",
      "author": "- Chris Grosser"
    },
    {
      "quote": "The harder you work, the luckier you get.",
      "author": "- Gary Player"
    },
    {
      "quote":
          "The only limit to our realization of tomorrow is our doubts of today.",
      "author": "- Franklin D. Roosevelt"
    },
    {
      "quote":
          "Your time is limited, so don’t waste it living someone else’s life.",
      "author": "- Steve Jobs"
    },
    {
      "quote":
          "The future belongs to those who believe in the beauty of their dreams.",
      "author": "- Eleanor Roosevelt"
    },
    {
      "quote":
          "Success is the sum of small efforts, repeated day in and day out.",
      "author": "- Robert Collier"
    },
    {
      "quote":
          "Keep going. Everything you need will come to you at the perfect time.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The only way to achieve the impossible is to believe it is possible.",
      "author": "- Charles Kingsleigh"
    },
    {
      "quote":
          "To succeed in life, you need two things: ignorance and confidence.",
      "author": "- Mark Twain"
    },
    {
      "quote":
          "What you get by achieving your goals is not as important as what you become by achieving your goals.",
      "author": "- Zig Ziglar"
    },
    {
      "quote": "Don’t watch the clock; do what it does. Keep going.",
      "author": "- Sam Levenson"
    },
    {
      "quote":
          "It’s not whether you get knocked down, it’s whether you get up.",
      "author": "- Vince Lombardi"
    },
    {
      "quote":
          "You are never too old to set another goal or to dream a new dream.",
      "author": "- C.S. Lewis"
    },
    {
      "quote":
          "Keep your face always toward the sunshine—and shadows will fall behind you.",
      "author": "- Walt Whitman"
    },
    {
      "quote":
          "The only place where success comes before work is in the dictionary.",
      "author": "- Vidal Sassoon"
    },
    {
      "quote": "A goal without a plan is just a wish.",
      "author": "- Antoine de Saint-Exupéry"
    },
    {
      "quote":
          "Life is not measured by the number of breaths we take, but by the moments that take our breath away.",
      "author": "- Unknown"
    },
    {
      "quote": "Success is not in what you have, but who you are.",
      "author": "- Bo Bennett"
    },
    {
      "quote":
          "You can’t go back and change the beginning, but you can start where you are and change the ending.",
      "author": "- C.S. Lewis"
    },
    {
      "quote": "There are no shortcuts to any place worth going.",
      "author": "- Beverly Sills"
    },
    {
      "quote":
          "You don’t have to be great to start, but you have to start to be great.",
      "author": "- Zig Ziglar"
    },
    {
      "quote": "Start where you are. Use what you have. Do what you can.",
      "author": "- Arthur Ashe"
    },
    {
      "quote":
          "Success is not the key to happiness. Happiness is the key to success.",
      "author": "- Albert Schweitzer"
    },
    {
      "quote": "The secret of getting ahead is getting started.",
      "author": "- Mark Twain"
    },
    {
      "quote": "Act as if what you do makes a difference. It does.",
      "author": "- William James"
    },
    {
      "quote":
          "The only limit to our realization of tomorrow is our doubts of today.",
      "author": "- Franklin D. Roosevelt"
    },
    {
      "quote":
          "Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart.",
      "author": "- Roy T. Bennett"
    },
    {
      "quote": "Don’t stop when you’re tired. Stop when you’re done.",
      "author": "- Unknown"
    },
    {
      "quote": "The only way to do great work is to love what you do.",
      "author": "- Steve Jobs"
    },
    {
      "quote":
          "There are no limits to what you can accomplish, except the limits you place on your own thinking.",
      "author": "- Brian Tracy"
    },
    {
      "quote":
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      "author": "- Winston Churchill"
    },
    {
      "quote": "You can never plan the future by the past.",
      "author": "- Edmund Burke"
    },
    {
      "quote": "The way to get started is to quit talking and begin doing.",
      "author": "- Walt Disney"
    },
    {
      "quote":
          "Hardships often prepare ordinary people for an extraordinary destiny.",
      "author": "- C.S. Lewis"
    },
    {
      "quote": "Believe you can and you're halfway there.",
      "author": "- Theodore Roosevelt"
    },
    {
      "quote":
          "Success is the sum of small efforts, repeated day in and day out.",
      "author": "- Robert Collier"
    },
    {
      "quote":
          "You are never too old to set another goal or to dream a new dream.",
      "author": "- C.S. Lewis"
    },
    {
      "quote": "To live a creative life, we must lose our fear of being wrong.",
      "author": "- Joseph Chilton Pearce"
    },
    {
      "quote":
          "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote": "Action is the foundational key to all success.",
      "author": "- Pablo Picasso"
    },
    {"quote": "Dream big and dare to fail.", "author": "- Norman Vaughan"},
    {
      "quote":
          "Your life does not get better by chance, it gets better by change.",
      "author": "- Jim Rohn"
    },
    {
      "quote":
          "The future belongs to those who believe in the beauty of their dreams.",
      "author": "- Eleanor Roosevelt"
    },
    {
      "quote":
          "Hardships often prepare ordinary people for an extraordinary destiny.",
      "author": "- C.S. Lewis"
    },
    {
      "quote":
          "Success is not the key to happiness. Happiness is the key to success.",
      "author": "- Albert Schweitzer"
    },
    {
      "quote":
          "The only place where success comes before work is in the dictionary.",
      "author": "- Vidal Sassoon"
    },
    {
      "quote": "It always seems impossible until it’s done.",
      "author": "- Nelson Mandela"
    },
    {
      "quote": "The secret to getting ahead is getting started.",
      "author": "- Mark Twain"
    },
    {
      "quote":
          "The only limit to our realization of tomorrow is our doubts of today.",
      "author": "- Franklin D. Roosevelt"
    },
    {
      "quote":
          "Don’t wait for the perfect moment. Take the moment and make it perfect.",
      "author": "- Unknown"
    },
    {
      "quote": "The best revenge is massive success.",
      "author": "- Frank Sinatra"
    },
    {
      "quote": "The best way to predict your future is to create it.",
      "author": "- Abraham Lincoln"
    },
    {
      "quote":
          "Your time is limited, so don’t waste it living someone else’s life.",
      "author": "- Steve Jobs"
    },
    {
      "quote": "The future depends on what you do today.",
      "author": "- Mahatma Gandhi"
    },
    {
      "quote": "Life begins at the end of your comfort zone.",
      "author": "- Neale Donald Walsch"
    },
    {
      "quote": "Don’t be afraid to give up the good to go for the great.",
      "author": "- John D. Rockefeller"
    },
    {
      "quote": "We may encounter many defeats, but we must not be defeated.",
      "author": "- Maya Angelou"
    },
    {
      "quote": "You miss 100% of the shots you don’t take.",
      "author": "- Wayne Gretzky"
    }
  ];

  int currentIndexqi = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqi = prefs.getInt('currentIndexqi') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqi', currentIndexqi);
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
          middle: Text(
            'Inspirational',
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
                lastPage = InspiApp();
                Navigator.pushReplacement(context,
                    CupertinoPageRoute(builder: (context) => Settings()));
              }),
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
                            quotes[currentIndexqi]["quote"]!,
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
                        quotes[currentIndexqi]["author"]!,
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
                                          currentIndexqi =
                                              (currentIndexqi - 1) %
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
                                          currentIndexqi =
                                              (currentIndexqi + 1) %
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
                                        currentIndexqi = (currentIndexqi - 1) %
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
                                        currentIndexqi = (currentIndexqi + 1) %
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
