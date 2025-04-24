import 'package:himalayan_delights/screen/category_screen/imports.dart';

class CategoriesRecommendation extends StatelessWidget {
  const CategoriesRecommendation({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    // List<String> contentImage = [
    //   // 'https://live.staticflickr.com/65535/53620349151_14d4a1ecb7_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53620560348_cd902e2931_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53620684234_a382356732_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53620799995_81c056aaca_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53620806540_768b0553ac_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53620801680_e078576f66_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53620355276_3a74a98681_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53620691034_fbc47f4ffb_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53620805125_aa6deb760e_o.jpg',
    //   // 'https://live.staticflickr.com/65535/53621079588_6638010656_o.jpg',
    //   'https://live.staticflickr.com/65535/53620246002_2bbe9eec72_o.jpg',
    //   'https://live.staticflickr.com/65535/53621572825_abe447c506_o.jpg',
    // ];
    // Map<String, String> foodItem = {
    //   'Momo': '4.00',
    //   'Pizza': '6.00',
    //   'Vegeterian': '2.00',
    //   'Drinks': '2.00',
    // };
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TitleHeading(
            title: title,
          ),
        ),
        Recommendation(
          boxWidth: 40,
          bottomPosition: 25,
        )
      ],
    );
  }
}
