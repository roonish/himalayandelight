import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:himalayan_delights/widgets/rating_star.dart';
import '../bloc/recommendation/recommendation_bloc.dart';
import '../screen/error_screen/error_screen.dart';
import '../screen/home_screen/imports.dart';
import 'loading.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({
    super.key,
    required this.contentImage,
    required this.itemCount,
    this.bottomPosition = 15,
    this.boxWidth = 30,
    required this.foodDetail,
  });

  final List<String> contentImage;
  final Map<String, String> foodDetail;
  final int itemCount;
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
          return ErrorScreen(
            errorText: state.errorMsg,
          );
        }
        if (state is RecommendationFoodListSuccess) {
          return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemCount,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.76,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => context.go('/home/detail', extra: {
                    'title': foodDetail.keys.elementAt(index),
                    'price': foodDetail.values.elementAt(index),
                    'image': contentImage[index]
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
                                  image: contentImage[index],
                                )),
                            Padding(
                              padding: textPadding,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  LabelText(
                                    text: foodDetail.keys.elementAt(index),
                                    size: 15,
                                  ),
                                  LabelText(
                                    text:
                                        '\$${foodDetail.values.elementAt(index)}',
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            const RatingStar(starCount: 5)
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
                              'title': foodDetail.keys.elementAt(index),
                              'price': foodDetail.values.elementAt(index),
                              'image': contentImage[index]
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
