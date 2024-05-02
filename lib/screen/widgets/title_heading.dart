import '../home_screen/imports.dart';

class TitleHeading extends StatelessWidget {
  final String title;
  final String seeMoreText;
  const TitleHeading({
    required this.title,
    required this.seeMoreText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 21, color: AppColor.headerColor),
        ),
        Text(
          seeMoreText,
          style: TextStyle(fontSize: 15, color: AppColor.primaryColor),
        ),
      ],
    );
  }
}
