import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:himalayan_delights/repositories/recm_repository.dart';

import '../../model/recommendation.dart';

part 'recommendation_event.dart';
part 'recommendation_state.dart';

class RecommendationBloc
    extends Bloc<RecommendationEvent, RecommendationState> {
  final RecmRepository recmRepository;
  RecommendationBloc(this.recmRepository) : super(RecommendationInitial()) {
    on<DisplayRecm>(_displayRecmFood);
  }

  void _displayRecmFood(
      DisplayRecm event, Emitter<RecommendationState> emit) async {
    emit(const RecommendationLoading());
    try {
      final BuiltList<Recommendation>? recmFood =
          await recmRepository.getRecmFood();
      if (recmFood!.isEmpty) {
        emit(const RecommendationFailed("Empty"));
      } else {
        emit(RecommendationFoodListSuccess(recmFood));
      }
    } on Exception catch (e) {
      emit(RecommendationFailed(e.toString()));
    }
  }
}
