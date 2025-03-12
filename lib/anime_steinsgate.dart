import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Steinsgate extends StatefulWidget {
  const Steinsgate({super.key});

  @override
  State<Steinsgate> createState() => _SteinsgateState();
}

class _SteinsgateState extends State<Steinsgate> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "The universe has a beginning, but no end. However, we don't know where we’re headed, do we?",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "The past is a part of who I am. But I will keep moving forward, because I don't want to lose what I have.",
      "author": "- Makise Kurisu"
    },
    {
      "quote":
          "To live in the moment, one must be prepared to sacrifice the future.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote": "The world is a cruel place, but still, it’s beautiful.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "The only thing that is inevitable is the passage of time. And no matter what you do, you can't escape it.",
      "author": "- Mayuri Shiina"
    },
    {
      "quote":
          "When you dive into the unknown, you can never know what lies on the other side. That's the beauty of it.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "The thing I regret most is that I didn’t tell her how much she meant to me while I still could.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "The world is full of possibilities. But sometimes, the greatest chance is the one you decide not to take.",
      "author": "- Makise Kurisu"
    },
    {
      "quote":
          "The choices we make shape our world. But are they truly our own, or do they come from somewhere else?",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "The truth is, even if I could go back, I would still make the same decision.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "I don’t want to save the world. I want to save her. Because I love her.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "The future isn't a straight line. It’s a jumbled mess of possibilities. You can only hope that things work out.",
      "author": "- Makise Kurisu"
    },
    {
      "quote":
          "Time is cruel. It doesn't care for your feelings or your regrets. It just moves on, whether you want it to or not.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "I don’t know if I can change the past, but if I can, I will. I will do whatever it takes.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "Sometimes, the most painful decisions are the ones that feel right.",
      "author": "- Makise Kurisu"
    },
    {
      "quote":
          "The world doesn’t care about you, and it never will. But that doesn’t mean you shouldn’t care about it.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "Even if you find a way to change time, there’s no guarantee that you’ll get the outcome you want.",
      "author": "- Makise Kurisu"
    },
    {
      "quote":
          "You can never truly understand the consequences of your actions until it's too late.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "In the end, it’s not about changing the past. It’s about protecting the future.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "I would rather be foolish and live in the present than be consumed by the past.",
      "author": "- Mayuri Shiina"
    },
    {
      "quote":
          "No one can escape time. We can only hope to make the best of it.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "What is a 'perfect' future? A future without pain? Without hardship? That’s just an illusion.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "It's not the things that happen to you, but how you react to them that defines who you are.",
      "author": "- Makise Kurisu"
    },
    {
      "quote":
          "The past isn't something you can change. But if you truly care about it, you'll carry it with you.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "It’s not the path you take, it’s the choices you make along the way that matter most.",
      "author": "- Makise Kurisu"
    },
    {
      "quote":
          "If I have to choose between saving a life or saving the world, I’ll choose the one that’s closest to me.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "In the end, we’re all just pawns in someone else’s game. But that doesn’t mean we can’t choose our moves.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "Even if the world collapses, we still have each other. That’s the only thing I’m certain of.",
      "author": "- Mayuri Shiina"
    },
    {
      "quote":
          "Time travel isn’t just about jumping between past and future. It’s about changing how we see the world.",
      "author": "- Makise Kurisu"
    },
    {
      "quote":
          "We can't change the world all at once, but we can make small changes that add up.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "I’ll make the impossible possible. That’s my job as a mad scientist.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "A moment lost in time is a moment you can never get back. But it’s also the moment that shapes everything to come.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "People are always told that the truth will set them free, but sometimes the truth is too much to bear.",
      "author": "- Rintarou Okabe"
    },
    {
      "quote":
          "We live in the present, but the present is just an intersection of the past and future. It’s a crossroads that decides everything.",
      "author": "- Makise Kurisu"
    }
  ];
  int currentIndexsteinsgate = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexsteinsgate = prefs.getInt('currentIndexsteinsgate') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexsteinsgate', currentIndexsteinsgate);
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
          'Steins;Gate',
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
              lastPage = Steinsgate();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
      ),
    );
  }
}
