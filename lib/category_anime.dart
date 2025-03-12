import 'package:ashborn/anime_attacktitan.dart';
import 'package:ashborn/category.dart';
import 'package:ashborn/anime_cowboy.dart';
import 'package:ashborn/anime_deathnote.dart';
import 'package:ashborn/anime_fullmetal.dart';
import 'package:ashborn/quote_motivational.dart';
import 'package:ashborn/anime_naruto.dart';
import 'package:ashborn/anime_neongenesis.dart';
import 'package:ashborn/anime_steinsgate.dart';
import 'package:flutter/cupertino.dart';

class AnimeCategory extends StatefulWidget {
  const AnimeCategory({super.key});

  @override
  State<AnimeCategory> createState() => _AnimeCategoryState();
}

class _AnimeCategoryState extends State<AnimeCategory> {
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
                  CupertinoPageRoute(builder: (context) => CategoryApp()),
                  (Route<dynamic> route) => false);
            }),
        middle: Text(
          'Anime Quotes',
          style: TextStyle(
            color: Color(0xFF262626),
            letterSpacing: 1.2,
            height: 1.5,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
