import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/home/presentation/bloc/article_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/router/my_router.dart';
import '../../data/models/article_model.dart';

class ListViewArticles extends StatelessWidget {
  const ListViewArticles({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context),
      child: ListView.separated(
        itemBuilder: (context, index) {
          final article = articles[index];

          return GestureDetector(
            onTap: () => context.push(MyRouter.articleRoute, extra: article),
            child: ListTile(
              contentPadding: const EdgeInsets.only(left: 0),
              title: Text(
                article.title,
                style: const TextStyle(height: 1.4),
              ),
              subtitle: Text(article.pubDate.hms(),
                  style: const TextStyle(height: 2.0)),
              trailing: Container(
                decoration: BoxDecoration(
                  color: darkTheme.colorScheme.primary,
                  border: Border.all(
                    color: darkTheme.colorScheme.secondary,
                  ),
                ),
                padding: const EdgeInsets.all(0),
                width: 90,
                height: 60,
                child: Hero(
                  tag: article.articleId,
                  child: article.imageUrl != null
                      ? Image.network(article.imageUrl!)
                      : Image.asset(
                          'assets/crypto.png',
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: darkTheme.colorScheme.secondary,
          height: 18,
        ),
        itemCount: articles.length,
      ),
    );
  }

  Future<void> _onRefresh(BuildContext context) async {
    final articleBloc = context.watch<ArticleBloc>();
    articleBloc.add(const ArticleEvent.getAllArticles());
  }
}
