import 'package:crypto_app/features/home/presentation/bloc/article_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          print('DEBBUG: listloaded articles $article ');

          return ListTile(
            contentPadding: const EdgeInsets.only(left: 0),
            title: Text(
              article.title,
              style: const TextStyle(height: 1.4),
            ),
            subtitle: const Text('5h agao', style: TextStyle(height: 2.0)),
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
                child: const Icon(Icons.grain_sharp, size: 40)),
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
