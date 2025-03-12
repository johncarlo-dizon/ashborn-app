import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CowBoy extends StatefulWidget {
  const CowBoy({super.key});

  @override
  State<CowBoy> createState() => _CowBoyState();
}

class _CowBoyState extends State<CowBoy> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "I’m not going there to die. I’m going to find out if I’m really alive.",
      "author": "- Spike Spiegel"
    },
    {"quote": "Whatever happens, happens.", "author": "- Spike Spiegel"},
    {
      "quote": "You can't fight fate. You can only fight to survive it.",
      "author": "- Faye Valentine"
    },
    {
      "quote": "I’m not good at goodbyes. That’s why I say, 'See you later.'",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "The past is like a dream. It’s something you can never go back to.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "I hate to say it, but I think you might be right. I think it's time to wake up.",
      "author": "- Jet Black"
    },
    {
      "quote": "You know, you’re not gonna die. Not unless you really want to.",
      "author": "- Faye Valentine"
    },
    {
      "quote":
          "I don't believe in God, but I'm afraid of Him. The fear of God is my guiding principle.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "You want to go back to the past, but you can’t. You can’t change what you’ve done. You just have to live with it.",
      "author": "- Jet Black"
    },
    {
      "quote":
          "The human race is a funny thing. A thing that can barely take care of itself.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "This is just the way the world works. A little bit of good, a little bit of bad, and you can’t have one without the other.",
      "author": "- Faye Valentine"
    },
    {
      "quote":
          "I’m a bounty hunter. That means I’m paid to take care of people. But that doesn’t mean I have to like it.",
      "author": "- Jet Black"
    },
    {
      "quote": "It's not about the money. It's about the thrill of the hunt.",
      "author": "- Spike Spiegel"
    },
    {
      "quote": "You can’t escape the past. It’s always with you.",
      "author": "- Faye Valentine"
    },
    {
      "quote":
          "I don’t need anyone. I’ve always been alone, and that’s the way I like it.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "It’s been said that you can’t have peace without sacrifice. And we’re willing to make that sacrifice.",
      "author": "- Jet Black"
    },
    {
      "quote":
          "Life is like a piano. The white keys are happy, and the black keys are sad. But you need both to make beautiful music.",
      "author": "- Faye Valentine"
    },
    {
      "quote":
          "You’re always running. You’re always hiding. But you never really escape.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "It’s not easy living with yourself. But you’ve got to make peace with it, or you’ll lose your mind.",
      "author": "- Jet Black"
    },
    {
      "quote":
          "I’m not looking for redemption. I’m just looking for something worth dying for.",
      "author": "- Spike Spiegel"
    },
    {
      "quote": "Everything is a lie, a game, and we’re all players.",
      "author": "- Faye Valentine"
    },
    {
      "quote": "Sometimes, you have to let go of your past to move forward.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "We’re all trying to get by in this life. Some do it better than others.",
      "author": "- Jet Black"
    },
    {
      "quote":
          "The world is full of stupid people. But that doesn’t mean you have to be one of them.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "If you can’t trust anyone, you have to learn to trust yourself.",
      "author": "- Faye Valentine"
    },
    {
      "quote":
          "The problem with running from your past is that it always catches up with you.",
      "author": "- Spike Spiegel"
    },
    {
      "quote": "I don’t need love. I just need to keep moving.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "You’ll never forget the one thing that haunts you. The thing that keeps you up at night.",
      "author": "- Faye Valentine"
    },
    {
      "quote":
          "I never look back. I never care about the past. It’s the future I want to reach.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "I don’t believe in fate. I believe in the choices we make, and the consequences that follow.",
      "author": "- Jet Black"
    },
    {
      "quote":
          "The thing about memories is that they always fade. But the regrets don’t.",
      "author": "- Faye Valentine"
    },
    {
      "quote": "If you want peace, you have to fight for it.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "I’ve spent my whole life running. But sometimes, you’ve got to stand your ground.",
      "author": "- Faye Valentine"
    },
    {
      "quote":
          "Every person I meet has a story. Some of them are worth listening to, and some of them aren’t.",
      "author": "- Spike Spiegel"
    },
    {
      "quote":
          "You can’t outrun the past, but you can try to live for something better.",
      "author": "- Jet Black"
    },
    {
      "quote":
          "Sometimes you have to burn your bridges. Because it’s the only way to move forward.",
      "author": "- Faye Valentine"
    },
    {
      "quote":
          "Life’s too short to regret what you’ve done. It’s better to regret what you haven’t.",
      "author": "- Spike Spiegel"
    }
  ];
  int currentIndexcowboy = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexcowboy = prefs.getInt('currentIndexcowboy') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexcowboy', currentIndexcowboy);
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
          'Cowboy Bebop',
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
              lastPage = CowBoy();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
      ),
    );
  }
}
