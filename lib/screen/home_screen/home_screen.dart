import 'package:go_router/go_router.dart';
import 'package:himalayan_delights/screen/home_screen/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(horizontal: 20);
    const EdgeInsetsGeometry titleBottomPadding = EdgeInsets.only(bottom: 15);

    List images = [
      'https://live.staticflickr.com/65535/53617693698_9a55f62c16_o.png',
      'https://live.staticflickr.com/65535/53618118025_5d5e220b88_o.png',
      'https://live.staticflickr.com/65535/53616607487_9869776fea_o.png',
      'https://live.staticflickr.com/65535/53617689693_ebdfd3f69d_o.png',
      'https://live.staticflickr.com/65535/53617817444_fcbbbe1d9d_o.png',
      'https://live.staticflickr.com/65535/53616799242_b058204944_o.png',
      'https://live.staticflickr.com/65535/53616610952_c650a01233_o.png',
      'https://live.staticflickr.com/65535/53616610192_9bf2ccdac9_o.png',
      'https://live.staticflickr.com/65535/53617933095_ec64419a9e_o.png',
      'https://live.staticflickr.com/65535/53617489501_9dc8b39717_o.png',
      'https://live.staticflickr.com/65535/53617674586_72541f5a53_o.png',
      'https://live.staticflickr.com/65535/53616483042_8ca21b57ba_o.jpg',
    ];

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
      appBar: appBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const BannerCard(),
            Padding(
              padding: gapPadding,
              child: Column(
                children: [
                  TitleHeading(
                    title: 'Categories',
                    seeMoreText: 'See All',
                    showSeeAll: true,
                    onSeeMoreTap: () => context.go('/category'),
                  ),
                  CategoriesList(images: images),
                  Padding(
                    padding: titleBottomPadding,
                    child: TitleHeading(
                      title: 'Recommend',
                      showSeeAll: true,
                      seeMoreText: 'See All',
                      onSeeMoreTap: () {},
                    ),
                  ),
                  Recommendation(contentImage: contentImage, itemCount: 4)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
