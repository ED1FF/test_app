import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:test_app/models/news.dart';

class NewsCard extends StatelessWidget {
  final News news;

  const NewsCard(this.news);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: FullScreenWidget(
                  backgroundIsTransparent: true,
                  child: Image.network(
                    news.imageUrl,
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 230,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  news.text,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.90,
          margin: EdgeInsets.only(top: 15),
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    );
  }
}
