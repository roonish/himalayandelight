import 'package:flutter/material.dart';
import 'package:himalayan_delights/themes/color_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              child: Container(
                  height: 170,
                  width: double.infinity,
                  color: AppColor.primaryColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(fontSize: 22),
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
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      const CircleAvatar(
                                        radius: 40,
                                        backgroundColor: AppColor.headerColor,
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
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommend',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 15, color: AppColor.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 360,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 25),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: AppColor.searchColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Container(
                                  height: 85,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: AppColor.primaryColor,
                                      borderRadius: BorderRadius.circular(7)),
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
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
