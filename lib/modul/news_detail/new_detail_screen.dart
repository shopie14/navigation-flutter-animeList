import 'package:flutter/material.dart';
import 'package:pertemuan_v/models/news.dart';

class NewsDetailScreen extends StatelessWidget {
  NewsDetailScreen({super.key, required this.news});
  News news;
  int rating = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anime Detail", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          Image.network(news.image!),
          const SizedBox(height: 10),
          Text(
            news.title!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow),
              const SizedBox(width: 5),
              Text(
                'Rating $rating / 5',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            news.description!,
            textAlign: TextAlign.justify,
          ),
        ]),
      ),
    );
  }
}
