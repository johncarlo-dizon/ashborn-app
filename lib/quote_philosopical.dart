import 'package:ashborn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

class Philosopical extends StatefulWidget {
  const Philosopical({super.key});

  @override
  State<Philosopical> createState() => _PhilosopicalState();
}

class _PhilosopicalState extends State<Philosopical> {
  List<Map<String, String>> quotes = [
    {
      "quote": "The unexamined life is not worth living.",
      "author": "- Socrates"
    },
    {"quote": "I think, therefore I am.", "author": "- René Descartes"},
    {"quote": "To be is to be perceived.", "author": "- George Berkeley"},
    {"quote": "Happiness depends upon ourselves.", "author": "- Aristotle"},
    {"quote": "Man is condemned to be free.", "author": "- Jean-Paul Sartre"},
    {
      "quote": "He who has a why to live can bear almost any how.",
      "author": "- Friedrich Nietzsche"
    },
    {
      "quote": "The only true wisdom is in knowing you know nothing.",
      "author": "- Socrates"
    },
    {
      "quote":
          "Life must be understood backward. But it must be lived forward.",
      "author": "- Søren Kierkegaard"
    },
    {
      "quote":
          "Knowing others is intelligence; knowing yourself is true wisdom.",
      "author": "- Lao Tzu"
    },
    {
      "quote":
          "The more I read, the more I acquire, the more certain I am that I know nothing.",
      "author": "- Voltaire"
    },
    {
      "quote": "We live in the best of all possible worlds.",
      "author": "- Gottfried Wilhelm Leibniz"
    },
    {
      "quote": "Everything has beauty, but not everyone sees it.",
      "author": "- Confucius"
    },
    {"quote": "The journey is the reward.", "author": "- Chinese Proverb"},
    {
      "quote": "Time is what we want most, but what we use worst.",
      "author": "- William Penn"
    },
    {
      "quote": "An unexamined life is not worth living.",
      "author": "- Socrates"
    },
    {"quote": "Man is the measure of all things.", "author": "- Protagoras"},
    {
      "quote": "The greatest wealth is to live content with little.",
      "author": "- Plato"
    },
    {
      "quote": "There is only one good, knowledge, and one evil, ignorance.",
      "author": "- Socrates"
    },
    {
      "quote":
          "We are what we repeatedly do. Excellence, then, is not an act, but a habit.",
      "author": "- Aristotle"
    },
    {
      "quote": "What we achieve inwardly will change outer reality.",
      "author": "- Plutarch"
    },
    {
      "quote": "The only thing I know is that I know nothing.",
      "author": "- Socrates"
    },
    {
      "quote": "Liberty, equality, fraternity.",
      "author": "- French Revolution Motto"
    },
    {
      "quote": "He who thinks great thoughts, often makes great errors.",
      "author": "- Martin Heidegger"
    },
    {
      "quote": "The only true wisdom is in knowing you know nothing.",
      "author": "- Socrates"
    },
    {
      "quote": "It is not length of life, but depth of life.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote": "The mind is everything. What you think you become.",
      "author": "- Buddha"
    },
    {
      "quote": "Those who cannot remember the past are condemned to repeat it.",
      "author": "- George Santayana"
    },
    {
      "quote": "Life without music would be a mistake.",
      "author": "- Friedrich Nietzsche"
    },
    {
      "quote": "Without music, life would be a mistake.",
      "author": "- Friedrich Nietzsche"
    },
    {
      "quote":
          "The good for man is an activity of the soul in accordance with virtue.",
      "author": "- Aristotle"
    },
    {
      "quote": "Everything flows, nothing stands still.",
      "author": "- Heraclitus"
    },
    {
      "quote": "We do not remember days, we remember moments.",
      "author": "- Cesare Pavese"
    },
    {"quote": "You have to be odd to be number one.", "author": "- Dr. Seuss"},
    {
      "quote": "Freedom is nothing else but a chance to be better.",
      "author": "- Albert Camus"
    },
    {
      "quote": "One cannot step twice into the same river.",
      "author": "- Heraclitus"
    },
    {
      "quote": "What does not kill us makes us stronger.",
      "author": "- Friedrich Nietzsche"
    },
    {"quote": "If you want to be happy, be.", "author": "- Leo Tolstoy"},
    {
      "quote": "I am not what happened to me, I am what I choose to become.",
      "author": "- Carl Jung"
    },
    {
      "quote": "There are no facts, only interpretations.",
      "author": "- Friedrich Nietzsche"
    },
    {
      "quote": "Injustice anywhere is a threat to justice everywhere.",
      "author": "- Martin Luther King Jr."
    },
    {
      "quote":
          "What we call the beginning is often the end. And to make an end is to make a beginning. The end is where we start from.",
      "author": "- T.S. Eliot"
    },
    {
      "quote": "Nothing is impossible, the word itself says 'I'm possible!'",
      "author": "- Audrey Hepburn"
    },
    {
      "quote":
          "To live is to suffer, to survive is to find some meaning in the suffering.",
      "author": "- Friedrich Nietzsche"
    },
    {
      "quote":
          "The only way to deal with this life meaningfully is to find one's passion.",
      "author": "- Friedrich Nietzsche"
    },
    {
      "quote":
          "Man is the only animal that causes pain to others with no other reason than to do so.",
      "author": "- Voltaire"
    },
    {
      "quote":
          "All that is gold does not glitter, not all those who wander are lost.",
      "author": "- J.R.R. Tolkien"
    },
    {
      "quote": "Not all those who wander are lost.",
      "author": "- J.R.R. Tolkien"
    },
    {
      "quote":
          "Our lives begin to end the day we become silent about things that matter.",
      "author": "- Martin Luther King Jr."
    },
    {
      "quote": "To love and be loved is to feel the sun from both sides.",
      "author": "- David Viscott"
    },
    {
      "quote": "Life is the flower for which love is the honey.",
      "author": "- Victor Hugo"
    },
    {
      "quote":
          "If we wait for the moment when everything, absolutely everything is ready, we shall never begin.",
      "author": "- Ivan Turgenev"
    },
    {
      "quote":
          "Man is not worried by real problems so much as by his imagined anxieties about real problems.",
      "author": "- Epictetus"
    },
    {
      "quote":
          "Do not go where the path may lead, go instead where there is no path and leave a trail.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote": "Injustice anywhere is a threat to justice everywhere.",
      "author": "- Martin Luther King Jr."
    },
    {
      "quote": "A person who stands for nothing will fall for anything.",
      "author": "- Malcolm X"
    },
    {
      "quote":
          "To know, is to know that you know nothing. That is the meaning of true knowledge.",
      "author": "- Socrates"
    },
    {
      "quote": "The more I see, the less I know for sure.",
      "author": "- John Lennon"
    },
    {
      "quote": "What we achieve inwardly will change outer reality.",
      "author": "- Plutarch"
    },
    {
      "quote":
          "If you want to go fast, go alone. If you want to go far, go together.",
      "author": "- African Proverb"
    },
    {
      "quote": "Time is the most valuable thing a man can spend.",
      "author": "- Theophrastus"
    },
    {
      "quote":
          "Live as if you were to die tomorrow. Learn as if you were to live forever.",
      "author": "- Mahatma Gandhi"
    },
    {
      "quote":
          "Those who are not looking for happiness are the most likely to find it.",
      "author": "- Unknown"
    },
    {
      "quote": "The only true wisdom is in knowing you know nothing.",
      "author": "- Socrates"
    },
    {
      "quote":
          "There is no greater agony than bearing an untold story inside you.",
      "author": "- Maya Angelou"
    },
    {
      "quote":
          "Not everything that is faced can be changed, but nothing can be changed until it is faced.",
      "author": "- James Baldwin"
    },
    {
      "quote": "The mind is everything. What you think you become.",
      "author": "- Buddha"
    },
    {
      "quote": "Everything has beauty, but not everyone sees it.",
      "author": "- Confucius"
    },
    {
      "quote":
          "A fool thinks himself to be wise, but a wise man knows himself to be a fool.",
      "author": "- William Shakespeare"
    },
    {
      "quote": "To be, or not to be, that is the question.",
      "author": "- William Shakespeare"
    },
    {
      "quote": "I can resist everything except temptation.",
      "author": "- Oscar Wilde"
    },
    {
      "quote": "Those who cannot change their minds cannot change anything.",
      "author": "- George Bernard Shaw"
    },
    {
      "quote": "Knowing yourself is the beginning of all wisdom.",
      "author": "- Aristotle"
    },
    {
      "quote": "The more you know, the more you realize you don’t know.",
      "author": "- Aristotle"
    },
    {
      "quote": "I am not an Athenian or a Greek, but a citizen of the world.",
      "author": "- Socrates"
    },
    {
      "quote":
          "Live life as though nobody is watching, and express yourself as though everyone is listening.",
      "author": "- Nelson Mandela"
    },
    {
      "quote":
          "We are what we think. All that we are arises with our thoughts. With our thoughts, we make the world.",
      "author": "- Buddha"
    }
  ];

  int currentIndexqp = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqp = prefs.getInt('currentIndexqp') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqp', currentIndexqp);
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
            'Philosophical',
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
                lastPage = Philosopical();
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
                            quotes[currentIndexqp]["quote"]!,
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
                        quotes[currentIndexqp]["author"]!,
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
                                          currentIndexqp =
                                              (currentIndexqp - 1) %
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
                                          currentIndexqp =
                                              (currentIndexqp + 1) %
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
                                        currentIndexqp = (currentIndexqp - 1) %
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
                                        currentIndexqp = (currentIndexqp + 1) %
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
