import 'package:himalayan_delights/screen/detail_screen/imports.dart';

class FoodTitle extends StatelessWidget {
  const FoodTitle({
    super.key,
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LabelText(text: title),
        LabelText(text: '$price \$'),
      ],
    );
  }
}
