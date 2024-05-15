import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class OrderUnSuccessScreen extends StatelessWidget {
  const OrderUnSuccessScreen({super.key});

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
                    'https://cdni.iconscout.com/illustration/premium/thumb/payment-failed-5795926-4841583.png'),
            StatusHeading(text: 'Oh, Oops'),
            CongratsOrFailureText(
                text: 'Perhaps you should try turning off and on again'),
            StatusDescText(
                text:
                    'F KJ IHG GRT GJROEIH GOIREGOIRJ JGRJOJ O JH GGJO JO JGOITRJ J '),
            BackToHomeButton(),
          ],
        ),
      ),
    );
  }
}
