import 'package:himalayan_delights/screen/detail_screen/imports.dart';

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
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.symmetric(horizontal: 18);
    final ValueNotifier<int> itemCount = ValueNotifier<int>(1);
    const EdgeInsetsGeometry quantityButtonPadding =
        EdgeInsets.only(top: 30, bottom: 10);
    const EdgeInsetsGeometry descPadding = EdgeInsets.symmetric(vertical: 20);
    const EdgeInsetsGeometry buttonPadding = EdgeInsets.symmetric(vertical: 20);

    return Scaffold(
      appBar: appBar(context, title: 'Food detail'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FoodImage(mediaQ: mediaQ, image: image),
            Padding(
              padding: quantityButtonPadding,
              child: QuantityButton(itemCount: itemCount),
            ),
            Padding(
              padding: bodyPadding,
              child: Column(
                children: [
                  FoodTitle(title: title, price: price),
                  Padding(
                    padding: descPadding,
                    child: LabelText(
                        maxLine: 6,
                        size: 15,
                        text:
                            '$title fjnk j gk  kngij gnkdn kgn kn  jg bfkh kohio s ep vmlfmdbl jhtoi gn fbfgh rtoi gp/jmbkmgfgrtkjp r;d jbngfgn b skg s.ghsroe. ggj/ s/ijgs j ghresh rg dhg .hrt  j ghd.ig hsgj s'),
                  ),
                  const FoodDetail(),
                  Padding(
                    padding: buttonPadding,
                    child: AppButton(
                      text: 'Add to cart',
                      verticalPadding: 12,
                      ontap: () => context.go('/orderSuccess'),
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
