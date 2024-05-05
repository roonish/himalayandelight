import 'package:flutter/material.dart';
import 'package:himalayan_delights/widgets/app_button.dart';
import 'package:himalayan_delights/widgets/label_text.dart';
import '../../themes/color_theme.dart';
import '../../widgets/appBar.dart';
import '../../widgets/app_image.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const DetailScreen(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.symmetric(horizontal: 18);
    ValueNotifier<int> itemCount = ValueNotifier<int>(1);
    return Scaffold(
      appBar: appBar(context, title: 'Food detail'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: AppColor.primaryColor,
              child: AppImage(image: image),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Container(
                width: 110,
                padding: const EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.searchColor),
                child: ValueListenableBuilder<int>(
                    valueListenable: itemCount,
                    builder: (context, int noOfOrder, child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () =>
                                  noOfOrder == 1 ? null : itemCount.value--,
                              child: Icon(
                                Icons.remove,
                                color: AppColor.primaryColor,
                                size: 15,
                              )),
                          LabelText(
                            text: noOfOrder.toString(),
                            color: AppColor.primaryColor,
                            size: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          InkWell(
                            onTap: () => itemCount.value++,
                            child: Icon(
                              Icons.add,
                              color: AppColor.primaryColor,
                              size: 15,
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Padding(
              padding: bodyPadding,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LabelText(text: title),
                      LabelText(text: '$price \$'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: LabelText(
                        maxLine: 6,
                        size: 15,
                        text:
                            '$title fjnk j gk  kngij gnkdn kgn kn  jg bfkh kohio s ep vmlfmdbl jhtoi gn fbfgh rtoi gp/jmbkmgfgrtkjp r;d jbngfgn b skg s.ghsroe. ggj/ s/ijgs j ghresh rg dhg .hrt  j ghd.ig hsgj s'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const FoodDetails(
                          icon: Icons.star,
                          iconColor: AppColor.ratingColor,
                          title: '4.5'),
                      FoodDetails(
                          icon: Icons.local_fire_department_sharp,
                          iconColor: AppColor.primaryColor,
                          title: '354 g| 135 kcal'),
                      FoodDetails(
                          icon: Icons.access_time_filled,
                          iconColor: AppColor.primaryColor,
                          title: '9-15 min')
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: AppButton(
                      text: 'Add to cart',
                      verticalPadding: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodDetails extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  const FoodDetails({
    super.key,
    required this.icon,
    required this.title,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
        const SizedBox(width: 10),
        LabelText(
          text: title,
          size: 14,
        ),
      ],
    );
  }
}
