import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';

import '../../model/recommendation.dart';

part 'recommendation_event.dart';
part 'recommendation_state.dart';

class RecommendationBloc extends Bloc<RecommendationEvent, RecommendationState> {
  RecommendationBloc() : super(RecommendationInitial()) {
    on<RecommendationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
