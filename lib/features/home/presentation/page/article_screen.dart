import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/features/home/presentation/page/paragraph.dart';
import 'package:flutter/material.dart';

import '../../data/models/article_model.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkTheme.colorScheme.primary,
        body: CustomScrollView(
          slivers: <Widget>[
            _createAppbar(article),
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 10.0),
                _postTitle(article, context),
                // Text(
                //   article.content,
                //   textAlign: TextAlign.justify,
                // ),
                ParagraphWidget(content: article.content)
              ]),
            )
          ],
        ));
  }
}

Widget _createAppbar(ArticleModel article) {
  print('DEBBUG: article.imageUrl! - $article ');

  return SliverAppBar(
    elevation: 0.0,
    backgroundColor: const Color.fromARGB(255, 8, 55, 67),
    expandedHeight: 200.0,
    floating: false,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      titlePadding:
          const EdgeInsets.only(left: 50, bottom: 10, right: 50, top: 30),
      title: Text(
        article.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
        softWrap: true,
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
      background: Stack(children: <Widget>[
        Hero(
          tag: article.articleId,
          child: article.imageUrl != null
              ? Image.network(article.imageUrl!)
              : Image.asset(
                  'assets/crypto.png',
                  fit: BoxFit.cover,
                ),
        ),
        Positioned.fill(
            child: Container(
          color: Colors.black54,
        ))
      ]),
    ),
  );
}

Widget _postTitle(ArticleModel article, BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 14),
    child: Row(
      children: [
        const SizedBox(width: 20.0),
        Flexible(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.date_range_sharp,
                  size: 30.0,
                  color: Color.fromARGB(255, 36, 188, 201),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(article.pubDate.toString(),
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ],
        ))
      ],
    ),
  );
}
