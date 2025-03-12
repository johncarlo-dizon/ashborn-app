import 'package:ashborn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

class Life extends StatefulWidget {
  const Life({super.key});

  @override
  State<Life> createState() => _LifeState();
}

class _LifeState extends State<Life> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "In three words I can sum up everything I've learned about life: it goes on.",
      "author": "- Robert Frost"
    },
    {
      "quote":
          "Life isn’t about waiting for the storm to pass, it’s about learning to dance in the rain.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote": "Life is really simple, but we insist on making it complicated.",
      "author": "- Confucius"
    },
    {
      "quote": "The best way to predict your future is to create it.",
      "author": "- Abraham Lincoln"
    },
    {
      "quote": "Life is what happens when you're busy making other plans.",
      "author": "- John Lennon"
    },
    {
      "quote": "The only impossible journey is the one you never begin.",
      "author": "- Tony Robbins"
    },
    {
      "quote": "Don’t count the days, make the days count.",
      "author": "- Muhammad Ali"
    },
    {
      "quote":
          "Good friends, good books, and a sleepy conscience: this is the ideal life.",
      "author": "- Mark Twain"
    },
    {
      "quote": "Life is 10% what happens to us and 90% how we react to it.",
      "author": "- Charles R. Swindoll"
    },
    {
      "quote":
          "Do not go where the path may lead, go instead where there is no path and leave a trail.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote": "Life is either a daring adventure or nothing at all.",
      "author": "- Helen Keller"
    },
    {
      "quote":
          "You have within you right now, everything you need to deal with whatever the world can throw at you.",
      "author": "- Brian Tracy"
    },
    {
      "quote": "You don't have to be rich to live a rich life.",
      "author": "- Unknown"
    },
    {
      "quote": "Live in the sunshine, swim the sea, drink the wild air.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote":
          "The purpose of life is to live it, to taste experience to the utmost, to reach out eagerly and without fear for newer and richer experience.",
      "author": "- Eleanor Roosevelt"
    },
    {
      "quote":
          "Life is not measured by the number of breaths we take, but by the moments that take our breath away.",
      "author": "- Unknown"
    },
    {
      "quote": "Life is short, and it is up to you to make it sweet.",
      "author": "- Sarah Louise Delany"
    },
    {
      "quote": "The best way to prepare for life is to begin to live.",
      "author": "- Elbert Hubbard"
    },
    {
      "quote":
          "Life is a journey that must be traveled no matter how bad the roads and accommodations.",
      "author": "- Oliver Goldsmith"
    },
    {
      "quote":
          "To live is the rarest thing in the world. Most people exist, that is all.",
      "author": "- Oscar Wilde"
    },
    {
      "quote": "Don't watch the clock; do what it does. Keep going.",
      "author": "- Sam Levenson"
    },
    {
      "quote": "Life is a flower of which love is the honey.",
      "author": "- Victor Hugo"
    },
    {
      "quote": "The unexamined life is not worth living.",
      "author": "- Socrates"
    },
    {
      "quote": "You only live once, but if you do it right, once is enough.",
      "author": "- Mae West"
    },
    {
      "quote":
          "Life is not about finding yourself. Life is about creating yourself.",
      "author": "- George Bernard Shaw"
    },
    {
      "quote": "We do not remember days, we remember moments.",
      "author": "- Cesare Pavese"
    },
    {
      "quote": "Life is a question and how we live it is our answer.",
      "author": "- Gary Keller"
    },
    {
      "quote": "In the end, we only regret the chances we didn’t take.",
      "author": "- Lewis Carroll"
    },
    {
      "quote":
          "A life spent making mistakes is not only more honorable, but more useful than a life spent doing nothing.",
      "author": "- George Bernard Shaw"
    },
    {
      "quote": "Life is too important to be taken seriously.",
      "author": "- Oscar Wilde"
    },
    {
      "quote":
          "The longer I live, the more I realize the impact of attitude on life. Attitude, to me, is more important than facts. It is more important than the past, than education, than money, than circumstances, than failures, than successes, than what other people think or say or do. It is more important than appearance, giftedness, or skill. It will make or break a company...a church...a home. The remarkable thing is we have a choice every day regarding the attitude we will embrace for that day. We cannot change our past...we cannot change the fact that people will act in a certain way. We cannot change the inevitable. The only thing we can do is play on the one string we have, and that is our attitude...I am convinced that life is 10% what happens to me and 90% how I react to it. And so it is with you...we are in charge of our attitudes.",
      "author": "- Charles R. Swindoll"
    },
    {
      "quote": "Life without love is like a tree without blossoms or fruit.",
      "author": "- Khalil Gibran"
    },
    {
      "quote": "We are always the same age inside.",
      "author": "- Gertrude Stein"
    },
    {
      "quote": "Life is what we make it, always has been, always will be.",
      "author": "- Grandma Moses"
    },
    {
      "quote":
          "Life is not about how many breaths you take, but about the moments that take your breath away.",
      "author": "- Unknown"
    },
    {
      "quote": "I have found that if you love life, life will love you back.",
      "author": "- Arthur Rubinstein"
    },
    {
      "quote": "A loving heart is the truest wisdom.",
      "author": "- Charles Dickens"
    },
    {
      "quote":
          "Your life does not get better by chance, it gets better by change.",
      "author": "- Jim Rohn"
    },
    {
      "quote": "Live life as if everything is rigged in your favor.",
      "author": "- Rumi"
    },
    {
      "quote": "Live the life you have imagined.",
      "author": "- Henry David Thoreau"
    },
    {
      "quote": "Life is the flower for which love is the honey.",
      "author": "- Victor Hugo"
    },
    {
      "quote":
          "Life is not about waiting for the storm to pass, but about learning to dance in the rain.",
      "author": "- Unknown"
    },
    {
      "quote": "Life is short and it’s up to you to make it sweet.",
      "author": "- Sarah Louise Delany"
    },
    {
      "quote": "Life is really simple, but we insist on making it complicated.",
      "author": "- Confucius"
    },
    {
      "quote": "Every man dies. Not every man really lives.",
      "author": "- William Wallace"
    },
    {
      "quote": "Our birthdays are feathers in the broad wing of time.",
      "author": "- Jean Paul"
    },
    {
      "quote": "Live the life you’ve imagined.",
      "author": "- Henry David Thoreau"
    },
    {
      "quote": "Life is either a daring adventure or nothing at all.",
      "author": "- Helen Keller"
    },
    {"quote": "The purpose of life is to be happy.", "author": "- Dalai Lama"},
    {
      "quote": "Life is too important to be taken seriously.",
      "author": "- Oscar Wilde"
    },
    {
      "quote":
          "Your life does not get better by chance, it gets better by change.",
      "author": "- Jim Rohn"
    },
    {
      "quote":
          "Life is the most wonderful thing in the world, but that doesn’t mean it’s easy.",
      "author": "- Unknown"
    },
    {
      "quote":
          "To live is the rarest thing in the world. Most people exist, that is all.",
      "author": "- Oscar Wilde"
    },
    {
      "quote":
          "Life is a great big canvas, and you should throw all the paint on it you can.",
      "author": "- Danny Kaye"
    },
    {
      "quote": "Life is too short to be anything but happy.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote": "Don't count the days, make the days count.",
      "author": "- Muhammad Ali"
    },
    {
      "quote": "Live in the sunshine, swim the sea, drink the wild air.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote":
          "The biggest adventure you can take is to live the life of your dreams.",
      "author": "- Oprah Winfrey"
    },
    {
      "quote": "Life is either a daring adventure or nothing at all.",
      "author": "- Helen Keller"
    },
    {
      "quote":
          "The most important thing in life is to learn how to give out love, and let it come in.",
      "author": "- Morrie Schwartz"
    },
    {"quote": "Life is a one-time offer, use it well.", "author": "- Unknown"},
    {
      "quote":
          "To live is to suffer, to survive is to find some meaning in the suffering.",
      "author": "- Friedrich Nietzsche"
    },
    {
      "quote": "Life is what happens when you're busy making other plans.",
      "author": "- John Lennon"
    },
    {
      "quote":
          "The purpose of life is not to be happy, but to be useful, honorable, and compassionate.",
      "author": "- Ralph Waldo Emerson"
    },
    {
      "quote":
          "The most difficult thing is the decision to act, the rest is merely tenacity.",
      "author": "- Amelia Earhart"
    },
    {
      "quote": "The good life is one inspired by love and guided by knowledge.",
      "author": "- Bertrand Russell"
    },
    {
      "quote": "Life is a daring adventure, or nothing at all.",
      "author": "- Helen Keller"
    },
    {
      "quote": "Life is 10% what happens to us and 90% how we react to it.",
      "author": "- Charles R. Swindoll"
    },
    {
      "quote": "Life is a flower of which love is the honey.",
      "author": "- Victor Hugo"
    }
  ];
  int currentIndexql = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexql = prefs.getInt('currentIndexql') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexql', currentIndexql);
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
          'Life',
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
              lastPage = Life();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
        // TRAILING ===============================================================================
      ),
    );
  }
}
