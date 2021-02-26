import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_app/models/news.dart';
import 'package:random_words/random_words.dart';

import 'components/card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<News> news = [];

    for (var i = 0; i < 10; i++) {
      news.add(News(
        WordPair.random(maxSyllables: 30).asString,
        'https://source.unsplash.com/random?sig=1' + i.toString(),
      ));
    }

    return MaterialApp(
      title: 'Test App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: news.map((item) => NewsCard(item)).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
