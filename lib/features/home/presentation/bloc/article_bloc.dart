import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/features/home/domain/usecase/get_articles_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/article_model.dart';

part 'article_event.dart';
part 'article_state.dart';
part 'article_bloc.freezed.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  GetAllArticlesUseCase getAllArticlesUseCase;

  ArticleBloc(this.getAllArticlesUseCase) : super(ArticleState.initial()) {
    on<ArticleEvent>((event, emit) async {
      await event.map(
          getAllArticles: (event) async => await _getAllArticles(emit));
    });
  }

  _getAllArticles(Emitter<ArticleState> emit) async {
    emit(state.copyWith(status: ArticleStatus.loading));

    final response = await getAllArticlesUseCase(const NoParams());

    response.fold(
      (l) => emit(state.copyWith(status: ArticleStatus.failure)),
      (r) {
        print('DEBBUG: bloc r - $r ');

        emit(state.copyWith(
            articles: r as List<ArticleModel>,
            status: ArticleStatus.listLoaded));
      },
    );
  }
}
