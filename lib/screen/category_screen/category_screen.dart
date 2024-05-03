import 'package:himalayan_delights/screen/category_screen/imports.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.symmetric(horizontal: 15);

    List contentImage = [
      // 'https://live.staticflickr.com/65535/53620349151_14d4a1ecb7_o.jpg',
      // 'https://live.staticflickr.com/65535/53620560348_cd902e2931_o.jpg',
      // 'https://live.staticflickr.com/65535/53620684234_a382356732_o.jpg',
      // 'https://live.staticflickr.com/65535/53620799995_81c056aaca_o.jpg',
      // 'https://live.staticflickr.com/65535/53620806540_768b0553ac_o.jpg',
      // 'https://live.staticflickr.com/65535/53620801680_e078576f66_o.jpg',
      // 'https://live.staticflickr.com/65535/53620355276_3a74a98681_o.jpg',
      // 'https://live.staticflickr.com/65535/53620691034_fbc47f4ffb_o.jpg',
      // 'https://live.staticflickr.com/65535/53620805125_aa6deb760e_o.jpg',
      // 'https://live.staticflickr.com/65535/53621079588_6638010656_o.jpg',
      'https://live.staticflickr.com/65535/53620246002_2bbe9eec72_o.jpg',
      'https://live.staticflickr.com/65535/53621572825_abe447c506_o.jpg',
    ];

    return Scaffold(
        appBar: appBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: bodyPadding,
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
