import 'package:go_router/go_router.dart';

import '../imports.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bannerPadding =
        EdgeInsets.only(top: 15, bottom: 30);
    const EdgeInsetsGeometry gapPadding = EdgeInsets.only(left: 30, top: 40);
    const EdgeInsetsGeometry buttonSpacePadding = EdgeInsets.only(top: 20);

    return Padding(
      padding: bannerPadding,
      child: Stack(
        children: [
          Container(
            height: getDeviceExactHeight(170, mediaQ),
            width: double.infinity,
            color: AppColor.primaryColor,
            child: Padding(
              padding: gapPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '"There is no love sincerer than \n the love of food"',
                    style: TextStyle(color: Color.fromRGBO(234, 234, 234, 1)),
                  ),
                  Padding(
                      padding: buttonSpacePadding,
                      child: AppButton(
                        width: getDeviceExactWidth(120, mediaQ),
                        text: 'Order Now',
                        ontap: () => context.go('/category'),
                        color: AppColor.headerColor,
                        textColor: AppColor.primaryColor,
                      ))
                ],
              ),
            ),
          ),
          Positioned(
              right: -45,
              bottom: -78,
              child: Image.asset(
                'assets/images/banner_food.png',
                fit: BoxFit.cover,
                height: getDeviceExactHeight(260, mediaQ),
              )),
        ],
      ),
    );
  }
}
