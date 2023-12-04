import 'package:flutter/material.dart';

import '../../data/models/article_model.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        _createAppbar(article),
        SliverList(
          delegate: SliverChildListDelegate([
            const SizedBox(height: 10.0),
          ]),
        )
      ],
    ));
  }
}

Widget _createAppbar(ArticleModel article) {
  return SliverAppBar(
    elevation: 2.0,
    backgroundColor: Colors.indigo,
    expandedHeight: 200.0,
    floating: false,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      title: Text(
        article.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      background: FadeInImage(
        image: (article.imageUrl != null)
            ? NetworkImage(article.imageUrl!)
            : Image.asset('assets/ship.jpg').image,
        placeholder: const AssetImage('assets/loading.gif'),
        fadeInDuration: const Duration(microseconds: 150),
        fit: BoxFit.cover,
      ),
    ),
  );
}
