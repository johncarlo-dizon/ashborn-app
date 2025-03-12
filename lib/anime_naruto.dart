import 'package:ashborn/category_anime.dart';
import 'package:flutter/cupertino.dart';
import 'variable.dart';
import 'settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NarutoApp extends StatefulWidget {
  const NarutoApp({super.key});

  @override
  State<NarutoApp> createState() => _NarutoAppState();
}

class _NarutoAppState extends State<NarutoApp> {
  List<Map<String, String>> quotes = [
    {
      "quote":
          "If you don’t share someone’s pain, you can never understand them",
      "author": "- Nagato"
    },
    {
      "quote":
          "War brings death. And wounds and pain to both sides. There’s nothing harder to accept, than the deaths of those you love. So you believe they could never die. Especially those who haven’t known war.",
      "author": "- Nagato"
    },
    {
      "quote":
          "The concept of hope is nothing more than giving up. A word that holds no true meaning.",
      "author": "- Madara Uchiha"
    },
    {
      "quote":
          "The longer you live… The more you realize that reality is just made of pain, suffering and emptiness.",
      "author": "- Madara Uchiha"
    },
    {
      "quote": "Love is not necessary, power is the only true necessity",
      "author": "- Madara Uchiha"
    },
    {
      "quote": "When a man learns to love, he must bear the risk of hatred.",
      "author": "- Madara Uchiha"
    },
    {
      "quote":
          "Power is not will, it is the phenomenon of physically making things happen.",
      "author": "- Madara Uchiha"
    },
    {
      "quote":
          "I’d be lying if I said things are going according to my plan… but beggars can’t be choosers, right?",
      "author": "- Madara Uchiha"
    },
    {
      "quote":
          "In this world, wherever there is light – there are also shadows. As long as the concept of winners exists, there must also be losers. The selfish desire of wanting to maintain peace causes wars, and hatred is born to protect love.",
      "author": "- Madara Uchiha"
    },
    {
      "quote":
          "Man seeks peace, yet at the same time yearning for war… Those are the two realms belonging solely to man. Thinking of peace whilst spilling blood is something that only humans could do. They’re two sides of the same coin… to protect something… another must be sacrificed",
      "author": "- Madara Uchiha"
    },
    {
      "quote":
          "People cannot show each other their true feelings. Fear, suspicion, and resentment never subside.",
      "author": "- Madara Uchiha"
    },
    {
      "quote":
          "Wake up to reality! Nothing ever goes as planned in this world. The longer you live, the more you realize that in this reality only pain, suffering and futility exist.",
      "author": "- Madara Uchiha"
    },
    {
      "quote":
          "Never give up without even trying. Do what you can, no matter how small the effect it may have!",
      "author": "- Onoki"
    },
    {
      "quote":
          "It is only through the eyes of others that our lives have any meaning.",
      "author": "- Haku"
    },
    {
      "quote":
          "When people are protecting something truly precious to them. They truly can become…as strong as they need to be!",
      "author": "- Haku"
    },
    {
      "quote":
          "Often people have it wrong, mistakenly believing… that showing mercy to an enemy is kindness. They spare the foe whose life is in their hands. But don’t you see? It’s an empty existence, to go on living… alone and unloved… when defeat’s already cost you your dream!",
      "author": "- Haku"
    },
    {
      "quote":
          "Rejection is a part of any man’s life. If you can’t accept and move past rejection, or at least use it as writing material – you’re not a real man.",
      "author": "- Jiraiya"
    },
    {
      "quote":
          "A person grows up when he’s able to overcome hardships. Protection is important, but there are some things that a person must learn on his own",
      "author": "- Jiraiya"
    },
    {
      "quote":
          "A place where someone still thinks about you is a place you can call home.",
      "author": "- Jiraiya"
    },
    {
      "quote":
          "When people get hurt, they learn to hate… When people hurt others, they become hated and racked with guilt. But knowing that pain allows people to be kind. Pain allows people to grow… and how you grow is up to you.",
      "author": "- Jiraiya"
    },
    {
      "quote":
          "Even I can tell that hatred is spreading. I wanted to do something about it… but I don’t know what. I believe… that someday the day will come when people truly understand one another!",
      "author": "- Jiraiya"
    },
    {
      "quote":
          "Hard work is worthless for those that don’t believe in themselves.",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "Because they saved me from myself, they rescued me from my loneliness. They were the first to accept me for who I am. They’re my friends",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "If you don’t like your destiny, don’t accept it. Instead have the courage to change it the way you want it to be.",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "The pain of being alone is completely out of this world, isn’t it? I don’t know why, but I understand your feelings so much, it actually hurts.",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote": "Once you question your own belief, it’s over",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "It’s not the face that makes someone a monster, it’s the choices they make with their lives.",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "The many lives lost during long years of conflict… because of those selfless sacrifices, we are able to bathe in peace and prosperity now. To ingrain this history within the new generation will be a vital cog in helping to maintain the peace.",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "While you’re alive, you need a reason for your existence. Being unable to find one is the same as being dead.",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "People who continue to put their lives on the line to defend their faith become heroes and continue to exist on in legend",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "If you don’t like the hand that fate’s dealt you with, fight for a new one!",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "When people are protecting something truly special to them, they truly can become… as strong as they can be.",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "When you give up, your dreams and everything else, they’re gone.",
      "author": "- Naruto Uzumaki"
    },
    {
      "quote":
          "Maybe, just maybe, there is no purpose in life… but if you linger a while longer in this world, you might discover something of value in it.",
      "author": "- Orochimaru"
    },
    {
      "quote":
          "It’s human nature not to realize the true value of something, unless they lose it.",
      "author": "- Orochimaru"
    },
    {
      "quote":
          "Either people change or they die before they do. It’s one or the other.",
      "author": "- Orochimaru"
    },
    {
      "quote":
          "Darkness. When everything that you know and love is taken away from you so harshly. All you can think about is anger, hatred and even revenge. And no one can save you.",
      "author": "- Orochimaru"
    },
    {
      "quote":
          "There probably isn’t any meaning in life. Perhaps you can find something interesting to do while you are alive. Like how you found that flower. Like how I found you.",
      "author": "- Orochimaru"
    },
    {
      "quote":
          "I’ve been wondering… There must be a purpose for people being born into this world. Why are we here? What does it mean? I’ve been thinking about it a lot lately. I realized that finding our purpose IS the meaning. That’s why we’re here. And the ones who find it… They’re the only ones who are truly free.",
      "author": "- Kimimaro"
    },
    {
      "quote":
          "Humans… Do humans have a purpose when they are born? I have been wondering recently. Because they are born, do they have an important duty? The meaning of being born… For humans to find that answer… It is the one freedom God gave them.",
      "author": "- Kimimaro"
    },
    {
      "quote": "No one cared who I was until I put on a mask.",
      "author": "- Obito Uchiha"
    },
    {
      "quote":
          "The moment people come to know love, they run the risk of carrying hate",
      "author": "- Obito Uchiha"
    },
    {
      "quote":
          "Never underestimate your opponent, no matter how small they may seem.",
      "author": "- Shino Aburame"
    },
    {
      "quote": "A smile is the easiest way out of a difficult situation.",
      "author": "- Sakura Haruno"
    },
    {
      "quote":
          "Every one of us must do what’s in their power! If we’re going to die anyway, then it’s better to die fighting than to do nothing!",
      "author": "- Sakura Haruno"
    },
    {
      "quote":
          "On that day, you taught me that solitude is painful! I understand that so well right now. I have family, and I have friends but if you’re gone… To me… It will be the same as being alone",
      "author": "- Sakura Haruno"
    },
    {
      "quote":
          "The things that are most important aren’t written in books. You have to learn them by experiencing them yourself.",
      "author": "- Sakura Haruno"
    },
    {
      "quote":
          "Having too many bonds causes one to lose focus, weakening their strongest wish, their greatest desire.",
      "author": "- Sasuke Uchiha"
    },
    {
      "quote": "Even the strongest of opponents always has a weakness",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "Those who forgive themselves, and are able to accept their true nature… They are the strong ones!",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "The ones who aren’t able to acknowledge their own selves are bound to fail.",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "Now I feel that maybe knowing who I actually am is the key to reach perfection. Because that means knowing what I can and cannot do.",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "Knowledge and awareness are vague, and perhaps better called illusions. Everyone lives within their own subjective interpretation.",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "Growth occurs when one goes beyond one’s limits. Realizing that is also part of training.",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "People’s lives don’t end when they die. It ends when they lose faith.",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "People live their lives bound by what they accept as correct and true. That’s how they define “reality”. But what does it mean to be “correct” or “true”? Merely vague concepts… Their “reality” may all be a mirage. Can we consider them to simply be living in their own world, shaped by their beliefs?",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "No single thing is perfect by itself. That’s why we’re born to attract other things to make up for what we lack. I think we start walking in the right direction only after we start getting our counterparts beside us.",
      "author": "- Itachi Uchiha"
    },
    {
      "quote":
          "Sometimes you must hurt in order to know, fall in order to grow, lose in order to gain because life’s greatest lessons are learned through pain.",
      "author": "- Pain"
    },
    {
      "quote":
          "Even innocent foolish children will grow up in the face of pain, until their thoughts and beliefs are the same as their doubts.",
      "author": "- Pain"
    },
    {
      "quote":
          "Just by living, people hurt others without even realizing it. So long as humanity exists, hate will also exist. There is no peace in this cursed world. War is just a crime paid for by the pain of the defeated.",
      "author": "- Pain"
    },
    {
      "quote":
          "Just because someone is important to you, it doesn’t necessarily mean that, that person is good. Even if you knew that person was evil… People cannot win against their loneliness.",
      "author": "- Gaara"
    },
    {
      "quote":
          "In order to escape a road of solitude, one has to work hard, and forge a new path with their own power.",
      "author": "- Gaara"
    },
    {
      "quote":
          "If love is just a word, then why does it hurt so much if you realize it isn’t there?",
      "author": "- Gaara"
    },
  ];
  int currentIndexnaruto = 0;

  @override
  void initState() {
    super.initState();
    _loadCurrentIndex();
  }

  Future<void> _loadCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndexnaruto = prefs.getInt('currentIndexnaruto') ?? 0;
    });
  }

  Future<void> _saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentIndexnaruto', currentIndexnaruto);
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
          'Naruto',
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
              lastPage = NarutoApp();
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            }),
      ),
    );
  }
}
