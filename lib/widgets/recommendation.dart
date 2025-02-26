import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:himalayan_delights/widgets/rating_star.dart';
import '../bloc/recommendation/recommendation_bloc.dart';
import '../screen/home_screen/imports.dart';
import 'loading.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({
    super.key,
    this.bottomPosition = 15,
    this.boxWidth = 30,
  });

  final double bottomPosition;
  final double boxWidth;

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry boxMargin = EdgeInsets.only(bottom: boxWidth);
    const EdgeInsetsGeometry boxPadding = EdgeInsets.all(12);
    const EdgeInsetsGeometry textPadding = EdgeInsets.only(top: 5, bottom: 2);
    final Size mediaQ = MediaQuery.of(context).size;

    return BlocBuilder<RecommendationBloc, RecommendationState>(
      builder: (context, state) {
        if (state is RecommendationLoading) {
          return LoadingScreen();
        }
        if (state is RecommendationFailed) {
          return LoadingScreen();
        }
        if (state is RecommendationFoodListSuccess) {
          return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.recommendedFood.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.76,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => context.go('/home/detail', extra: {
                    'title': state.recommendedFood[index].foodItem.name,
                    'price': state.recommendedFood[index].foodItem.unitPrice,
                    'image': state.recommendedFood[index].foodItem.image,
                  }),
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Container(
                        margin: boxMargin,
                        padding: boxPadding,
                        decoration: BoxDecoration(
                            color: AppColor.searchColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Container(
                                height: getDeviceExactHeight(90, mediaQ),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(7)),
                                child: AppImage(
                                  image: state
                                      .recommendedFood[index].foodItem.image,
                                )),
                            Padding(
                              padding: textPadding,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  LabelText(
                                    text: state
                                        .recommendedFood[index].foodItem.name,
                                    size: 15,
                                  ),
                                  LabelText(
                                    text:
                                        '\$${state.recommendedFood[index].foodItem.unitPrice}',
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            RatingStar(
                                starCount: state
                                    .recommendedFood[index].foodItem.rating)
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: bottomPosition,
                        right: 15,
                        child: SizedBox(
                          height: 35,
                          width: 35,
                          child: FloatingActionButton(
                            //making every floating button unique
                            heroTag: UniqueKey(),
                            backgroundColor: AppColor.primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            onPressed: () => context.go('/home/detail', extra: {
                              'title':
                                  state.recommendedFood[index].foodItem.name,
                              'price': state
                                  .recommendedFood[index].foodItem.unitPrice,
                              'image':
                                  state.recommendedFood[index].foodItem.image,
                              'desc':
                                  state.recommendedFood[index].foodItem.desc,
                              'rating':
                                  state.recommendedFood[index].foodItem.rating,
                              'calory':
                                  state.recommendedFood[index].foodItem.calory,
                            }),
                            child: const Icon(
                              Icons.add,
                              color: AppColor.searchColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              });
        }
        return SizedBox();
      },
    );
  }
}
