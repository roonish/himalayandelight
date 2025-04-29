part of 'recommendation_bloc.dart';

sealed class RecommendationState extends Equatable {
  const RecommendationState();
}

final class RecommendationInitial extends RecommendationState {
  const RecommendationInitial();
  @override
  List<Object?> get props => [];
}

final class RecommendationLoading extends RecommendationState {
  const RecommendationLoading();
  @override
  List<Object?> get props => [];
}

final class RecommendationFoodListSuccess extends RecommendationState {
  final BuiltList<Recommendation> recommendedFood;
  const RecommendationFoodListSuccess(this.recommendedFood);
  @override
  List<Object?> get props => [recommendedFood];
}

final class RecommendationFailed extends RecommendationState {
  final String errorMsg;
  const RecommendationFailed(this.errorMsg);
  @override
  List<Object?> get props => [errorMsg];
}
