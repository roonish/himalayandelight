import 'package:himalayan_delights/screen/category_screen/imports.dart';

class CategoriesRecommendation extends StatelessWidget {
  const CategoriesRecommendation({
    super.key,
    required this.contentImage,
    required this.title,
  });

  final List contentImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TitleHeading(
            title: title,
          ),
        ),
        Recommendation(
          contentImage: contentImage,
          itemCount: 2,
          boxWidth: 40,
          bottomPosition: 25,
        )
      ],
    );
  }
}
