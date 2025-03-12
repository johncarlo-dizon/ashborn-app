import 'package:flutter/cupertino.dart';
import 'package:ashborn/category_quote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';
import 'settings.dart';

class LoveApp extends StatefulWidget {
  const LoveApp({super.key});

  @override
  State<LoveApp> createState() => _LoveAppState();
}

class _LoveAppState extends State<LoveApp> {
  List<Map<String, String>> quotes = [
    {
      "quote": "Love is composed of a single soul inhabiting two bodies.",
      "author": "- Aristotle"
    },
    {
      "quote": "To love and be loved is to feel the sun from both sides.",
      "author": "- David Viscott"
    },
    {
      "quote":
          "Love is not about how many days, months, or years you have been together. Love is about how much you love each other every single day.",
      "author": "- Unknown"
    },
    {"quote": "I am yours, don't give myself back to me.", "author": "- Rumi"},
    {
      "quote": "You are my today and all of my tomorrows.",
      "author": "- Leo Christopher"
    },
    {
      "quote":
          "In all the world, there is no heart for me like yours. In all the world, there is no love for you like mine.",
      "author": "- Maya Angelou"
    },
    {
      "quote":
          "I have waited for this opportunity for more than half a century, to repeat to you once again my vow of eternal fidelity and everlasting love.",
      "author": "- Gabriel Garcia Marquez"
    },
    {
      "quote":
          "You know you're in love when you can't fall asleep because reality is finally better than your dreams.",
      "author": "- Dr. Seuss"
    },
    {
      "quote":
          "When I saw you I fell in love, and you smiled because you knew.",
      "author": "- Arrigo Boito"
    },
    {
      "quote":
          "True love is not about perfection, it is hidden in flaws and mistakes, but it is real.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Love looks not with the eyes, but with the mind, and therefore is winged Cupid painted blind.",
      "author": "- William Shakespeare"
    },
    {
      "quote":
          "I love you not only for what you are, but for what I am when I am with you.",
      "author": "- Roy Croft"
    },
    {
      "quote":
          "Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.",
      "author": "- Lao Tzu"
    },
    {
      "quote": "You are my heart, my life, my one and only thought.",
      "author": "- Arthur Conan Doyle"
    },
    {
      "quote":
          "Love is an endless act of forgiveness. Forgiveness is the key to action and freedom.",
      "author": "- Maya Angelou"
    },
    {
      "quote": "To love or have loved, that is enough. Ask nothing further.",
      "author": "- Victor Hugo"
    },
    {
      "quote": "The best thing to hold onto in life is each other.",
      "author": "- Audrey Hepburn"
    },
    {
      "quote":
          "Love is not about how many times you say 'I love you,' but how much you prove that it’s true.",
      "author": "- Unknown"
    },
    {
      "quote":
          "I love you because the entire universe conspired to help me find you.",
      "author": "- Paulo Coelho"
    },
    {
      "quote": "There is no remedy for love but to love more.",
      "author": "- Henry David Thoreau"
    },
    {
      "quote": "Love is a friendship set to music.",
      "author": "- Joseph Campbell"
    },
    {
      "quote": "You are the one that I want.",
      "author": "- John Travolta (from *Grease*)"
    },
    {
      "quote":
          "The greatest thing you'll ever learn is just to love and be loved in return.",
      "author": "- Eden Ahbez"
    },
    {
      "quote":
          "Love is the only reality, and it is not a mere sentiment. It is the ultimate truth that lies at the heart of creation.",
      "author": "- Rabindranath Tagore"
    },
    {
      "quote": "I love you more than I have ever found a way to say to you.",
      "author": "- Ben Foster"
    },
    {
      "quote": "In your eyes, I find something more beautiful than stars.",
      "author": "- Unknown"
    },
    {
      "quote": "Love is like the wind, you can’t see it but you can feel it.",
      "author": "- Nicholas Sparks"
    },
    {
      "quote":
          "Love is a promise, love is a souvenir, once given never forgotten, never let it disappear.",
      "author": "- John Lennon"
    },
    {
      "quote": "Love means never having to say you're sorry.",
      "author": "- Erich Segal"
    },
    {
      "quote": "A loving heart is the truest wisdom.",
      "author": "- Charles Dickens"
    },
    {
      "quote": "Love is a two-way street constantly under construction.",
      "author": "- Carroll Bryant"
    },
    {
      "quote":
          "Love isn’t something you find. Love is something that finds you.",
      "author": "- Loretta Young"
    },
    {
      "quote":
          "I would rather spend one moment holding you than a lifetime knowing I never could.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The greatest thing you’ll ever learn is just to love, and be loved in return.",
      "author": "- Nat King Cole"
    },
    {
      "quote":
          "I love you not because of who you are, but because of who I am when I am with you.",
      "author": "- Roy Croft"
    },
    {
      "quote":
          "The best love is the kind that awakens the soul; that makes us reach for more, that plants a fire in our hearts and brings peace to our minds.",
      "author": "- Nicholas Sparks"
    },
    {
      "quote": "Love is the flower you’ve got to let grow.",
      "author": "- John Lennon"
    },
    {
      "quote":
          "Love is the only reality, and it is not a mere sentiment. It is the ultimate truth that lies at the heart of creation.",
      "author": "- Rabindranath Tagore"
    },
    {
      "quote": "I have found the one whom my soul loves.",
      "author": "- Song of Solomon 3:4"
    },
    {
      "quote": "There is no greater happiness than love.",
      "author": "- Unknown"
    },
    {
      "quote": "Where there is love there is life.",
      "author": "- Mahatma Gandhi"
    },
    {
      "quote": "If I know what love is, it is because of you.",
      "author": "- Hermann Hesse"
    },
    {"quote": "You are my greatest adventure.", "author": "- The Incredibles"},
    {
      "quote": "Love is not about possession, it’s about appreciation.",
      "author": "- Osho"
    },
    {
      "quote":
          "In all the world, there is no heart for me like yours. In all the world, there is no love for you like mine.",
      "author": "- Maya Angelou"
    },
    {
      "quote": "A soulmate is someone who has the keys to your heart.",
      "author": "- Unknown"
    },
    {
      "quote":
          "Love is when the other person’s happiness is more important than your own.",
      "author": "- H. Jackson Brown Jr."
    },
    {
      "quote": "Love is like the wind, you can’t see it but you can feel it.",
      "author": "- Nicholas Sparks"
    },
    {
      "quote":
          "True love is like ghosts, which everyone talks about and few have seen.",
      "author": "- Francois de La Rochefoucauld"
    },
    {
      "quote": "You are my heart, my life, my one and only thought.",
      "author": "- Arthur Conan Doyle"
    },
    {
      "quote":
          "If I had a flower for every time I thought of you, I could walk through my garden forever.",
      "author": "- Alfred Lord Tennyson"
    },
    {"quote": "I love you to the moon and back.", "author": "- Unknown"},
    {"quote": "I am yours, don’t give myself back to me.", "author": "- Rumi"},
    {
      "quote": "You are my sunshine, my only sunshine.",
      "author": "- Johnny Cash"
    },
    {
      "quote": "Where you go, I will go; where you stay, I will stay.",
      "author": "- Ruth 1:16"
    },
    {
      "quote": "I’ve fallen in love many times… always with you.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The first time I saw you, my heart whispered, 'That's the one.'",
      "author": "- Unknown"
    },
    {"quote": "Love is a journey, not a destination.", "author": "- Unknown"},
    {
      "quote":
          "You are the love that came without warning; you had my heart before I could say no.",
      "author": "- Unknown"
    },
    {
      "quote":
          "The best love is the kind that awakens the soul; that makes us reach for more, that plants a fire in our hearts and brings peace to our minds.",
      "author": "- Nicholas Sparks"
    },
    {
      "quote":
          "In you, I’ve found the love of my life and my closest, truest friend.",
      "author": "- Unknown"
    },
    {
      "quote": "You are the one that I want.",
      "author": "- John Travolta (from *Grease*)"
    },
    {"quote": "I love you more than words can say.", "author": "- Unknown"},
    {
      "quote": "Love is not just a feeling, it is a choice to act selflessly.",
      "author": "- Unknown"
    },
    {
      "quote": "You are my heart, my life, my one and only thought.",
      "author": "- Arthur Conan Doyle"
    },
    {
      "quote": "The best love is the one that makes you better.",
      "author": "- Unknown"
    },
    {
      "quote": "To love or have loved, that is enough. Ask nothing further.",
      "author": "- Victor Hugo"
    },
    {
      "quote":
          "There is only one happiness in this life, to love and be loved.",
      "author": "- George Sand"
    },
    {
      "quote": "Love is the only reality, and it is not a mere sentiment.",
      "author": "- Rabindranath Tagore"
    },
    {
      "quote":
          "I love you because the entire universe conspired to help me find you.",
      "author": "- Paulo Coelho"
    },
    {
      "quote":
          "I love you not because of who you are, but because of who I am when I am with you.",
      "author": "- Roy Croft"
    },
    {
      "quote":
          "If you live to be a hundred, I want to live to be a hundred minus one day, so I never have to live without you.",
      "author": "- A.A. Milne"
    },
    {
      "quote":
          "If I had a rose for every time I thought of you, I’d be walking through my garden forever.",
      "author": "- Unknown"
    },
    {
      "quote": "You are my heart, my life, my one and only thought.",
      "author": "- Arthur Conan Doyle"
    }
  ];

  int currentIndexqll = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexqll = prefs.getInt('currentIndexqll') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexqll', currentIndexqll);
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
          'Love',
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
              lastPage = LoveApp();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
        // TRAILING ===============================================================================
      ),
    );
  }
}
