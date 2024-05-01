import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:himalayan_delights/themes/color_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: AppColor.searchColor, // Navigation bar
          statusBarColor: AppColor.darkBackgroundColor, // Status bar
        ),
        leadingWidth: MediaQuery.of(context).size.width / 1.2,
        scrolledUnderElevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20, top: 9, bottom: 5),
          child: TextField(
            style: TextStyle(color: AppColor.textColor),
            decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                ),
                suffixIcon: Icon(
                  Icons.mic_none,
                  size: 25,
                )),
            maxLines: 1,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 5, right: 10),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 30),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: AppColor.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '"There is no love sincerer than \n the love of food"',
                            style: TextStyle(color: AppColor.headerColor),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                  color: AppColor.headerColor,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Text(
                                'Order Now',
                                style: TextStyle(color: AppColor.primaryColor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: -45,
                      bottom: -83,
                      child: Image.asset(
                        'assets/images/banner_food.png',
                        fit: BoxFit.cover,
                        height: 280,
                      )
                      // CachedNetworkImage(
                      //   height: 120,
                      //   imageUrl:
                      //       'https://img.freepik.com/free-psd/indian-cuisine-isolated-transparent-background_191095-32402.jpg?size=338&ext=jpg&ga=GA1.1.553209589.1714348800&semt=ais',
                      //   placeholder: (context, url) =>
                      //       const CircularProgressIndicator(),
                      //   errorWidget: (context, url, error) =>
                      //       const Icon(Icons.error),
                      // ),
                      ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 21, color: AppColor.headerColor),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 15, color: AppColor.primaryColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            12,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor:
                                            AppColor.darkBackgroundColor,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.fill,
                                            imageUrl: images[index],
                                            placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text('$index ghb nn'))
                                    ],
                                  ),
                                )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommend',
                          style: TextStyle(
                              fontSize: 21, color: AppColor.headerColor),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 15, color: AppColor.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              childAspectRatio: 0.76,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return Stack(
                          fit: StackFit.loose,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 30),
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: AppColor.searchColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Container(
                                    height: 95,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: AppColor.primaryColor,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: CachedNetworkImage(
                                      imageUrl: contentImage[index],
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5, bottom: 2),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Chinese'),
                                        Text('\$ 4.00'),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                        5,
                                        (index) => const Icon(
                                              Icons.star,
                                              color: AppColor.ratingColor,
                                              size: 12,
                                            )),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              right: 15,
                              child: SizedBox(
                                height: 35,
                                width: 35,
                                child: FloatingActionButton(
                                  backgroundColor: AppColor.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.add,
                                    color: AppColor.searchColor,
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedLabelStyle:
                const TextStyle(color: AppColor.textColor, fontSize: 10),
            selectedLabelStyle: const TextStyle(fontSize: 10),
            items: [
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Icon(Icons.home),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor, shape: BoxShape.circle),
                      child: const Icon(Icons.home),
                    ),
                  ),
                  label: 'Home',
                  backgroundColor: AppColor.searchColor),
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Icon(
                      Icons.favorite,
                      color: AppColor.textColor,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor, shape: BoxShape.circle),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(Icons.favorite),
                      ),
                    ),
                  ),
                  label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Icon(
                      Icons.local_grocery_store,
                      color: AppColor.textColor,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor, shape: BoxShape.circle),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(Icons.local_grocery_store),
                      ),
                    ),
                  ),
                  label: 'My cart'),
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Icon(
                      Icons.mail,
                      color: AppColor.textColor,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor, shape: BoxShape.circle),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(Icons.mail),
                      ),
                    ),
                  ),
                  label: 'Message'),
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Icon(
                      Icons.person_off_outlined,
                      color: AppColor.textColor,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor, shape: BoxShape.circle),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(Icons.home),
                      ),
                    ),
                  ),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
