import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding =
        EdgeInsets.symmetric(vertical: 60, horizontal: 20);
    return const Scaffold(
      body: Padding(
        padding: gapPadding,
        child: Column(
          children: [
            StatusImage(
                image:
                    'https://cdni.iconscout.com/illustration/premium/thumb/girl-makes-online-purchase-successful-10767343-8687278.png'),
            StatusHeading(text: 'Successful'),
            CongratsOrFailureText(
                text: 'Congratulation your order is successful.'),
            StatusDescText(
                text:
                    'F KJ IHG GRT GJROEIH GOIREGOIRJ JGRJOJ O JH GGJO JO JGOITRJ J '),
            TrackOrderButton(),
            BackToHomeButton(),
          ],
        ),
      ),
    );
  }
}
