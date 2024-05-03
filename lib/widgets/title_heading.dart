import '../screen/home_screen/imports.dart';

class TitleHeading extends StatelessWidget {
  final String title;
  final String seeMoreText;
  final VoidCallback? onSeeMoreTap;
  final bool showSeeAll;
  const TitleHeading({
    required this.title,
    this.seeMoreText = '',
    this.onSeeMoreTap,
    this.showSeeAll = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, color: AppColor.headerColor),
        ),
        showSeeAll
            ? InkWell(
                onTap: onSeeMoreTap,
                child: Text(
                  seeMoreText,
                  style: TextStyle(fontSize: 15, color: AppColor.primaryColor),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
