import 'package:himalayan_delights/screen/authentication_screen/imports.dart';
import 'package:himalayan_delights/widgets/app_image.dart';

class OnboardingScreen extends StatelessWidget {
  final void Function() nextPage;
  final String image;
  final String topic;
  final String desc;
  final bool skip;
  final int pageIndex;

  const OnboardingScreen(
      {super.key,
      required this.nextPage,
      required this.image,
      required this.topic,
      required this.desc,
      required this.skip,
      required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(image: image),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: LabelText(
                text: topic,
                color: AppColor.primaryColor,
                size: 23,
              ),
            ),
            LabelText(
              text: desc,
              size: 15,
              maxLine: 3,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Container(
                            height: 11,
                            width: 11,
                            margin: const EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: pageIndex == index
                                    ? AppColor.primaryColor
                                    : AppColor.headerColor),
                          ))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: AppButton(
                text: skip ? 'Next' : 'Get Start',
                color: AppColor.primaryColor,
                verticalPadding: 12,
                ontap: skip ? nextPage : () => context.go('/home'),
              ),
            ),
            skip
                ? const LabelText(
                    text: 'Skip',
                    size: 17,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
