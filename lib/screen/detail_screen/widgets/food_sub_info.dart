import 'package:himalayan_delights/screen/detail_screen/imports.dart';

class FoodSubInfo extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  const FoodSubInfo({
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
