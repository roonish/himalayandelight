import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:himalayan_delights/screen/home_screen/imports.dart';
import 'package:himalayan_delights/widgets/label_text.dart';
import '../../themes/color_theme.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List contentImage = [
      // 'https://live.staticflickr.com/65535/53620349151_14d4a1ecb7_o.jpg',
      // 'https://live.staticflickr.com/65535/53620560348_cd902e2931_o.jpg',
      // 'https://live.staticflickr.com/65535/53620684234_a382356732_o.jpg',
      // 'https://live.staticflickr.com/65535/53620799995_81c056aaca_o.jpg',
      'https://live.staticflickr.com/65535/53620806540_768b0553ac_o.jpg',
      'https://live.staticflickr.com/65535/53620801680_e078576f66_o.jpg',
      'https://live.staticflickr.com/65535/53620355276_3a74a98681_o.jpg',
      // 'https://live.staticflickr.com/65535/53620691034_fbc47f4ffb_o.jpg',
      // 'https://live.staticflickr.com/65535/53620805125_aa6deb760e_o.jpg',
      'https://live.staticflickr.com/65535/53621079588_6638010656_o.jpg',
      'https://live.staticflickr.com/65535/53620246002_2bbe9eec72_o.jpg',
      'https://live.staticflickr.com/65535/53621572825_abe447c506_o.jpg',
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: AppColor.searchColor, // Navigation bar
            statusBarColor: AppColor.darkBackgroundColor, // Status bar
          ),
          scrolledUnderElevation: 0.0,
          leading: InkWell(
              onTap: () {
                context.go('/');
              },
              child: Icon(Icons.arrow_back_ios_outlined,
                  size: 20, color: AppColor.primaryColor)),
          title: const LabelText(text: 'Categories', size: 22),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CategoriesRecommendation(
                    title: 'Popular', contentImage: contentImage),
                CategoriesRecommendation(
                    title: 'Vegetarian', contentImage: contentImage),
                CategoriesRecommendation(
                    title: 'Barbeque', contentImage: contentImage),
                CategoriesRecommendation(
                    title: 'Chinese', contentImage: contentImage),
                CategoriesRecommendation(
                    title: 'Drinks', contentImage: contentImage),
              ],
            ),
          ),
        ));
  }
}

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
        Recommendation(contentImage: contentImage, itemCount: 2)
      ],
    );
  }
}
