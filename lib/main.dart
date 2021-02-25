import 'package:flutter/material.dart';
import 'package:test_app/models/news.dart';

import 'components/card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const News news = News(
      'assssds',
      'https://source.unsplash.com/random?sig=1',
    );

    return MaterialApp(
      title: 'Test App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                NewsCard(news),
                NewsCard(news),
                NewsCard(news),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
