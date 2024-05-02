import '../home_screen/imports.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry bannerPadding =
        EdgeInsets.only(top: 15, bottom: 30);
    const EdgeInsetsGeometry gapPadding = EdgeInsets.only(left: 30, top: 40);
    const EdgeInsetsGeometry buttonSpacePadding = EdgeInsets.only(top: 20);
    const EdgeInsetsGeometry buttonPadding = EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 10,
    );
    return Padding(
      padding: bannerPadding,
      child: Stack(
        children: [
          Container(
            //:todo: add responsive height
            height: 200,
            width: double.infinity,
            color: AppColor.primaryColor,
            child: Padding(
              padding: gapPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '"There is no love sincerer than \n the love of food"',
                    style: TextStyle(color: AppColor.headerColor),
                  ),
                  Padding(
                    padding: buttonSpacePadding,
                    child: Container(
                      padding: buttonPadding,
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
              )),
        ],
      ),
    );
  }
}
