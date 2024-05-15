import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          children: [
            SuccessImage(),
            SuccessTitle(),
            SuccessCongrats(),
             SuccessDesc(),
             TrackOrderButton(),
             BackToHomeButton(),
          ],
        ),
      ),
    );
  }
}

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
     padding: EdgeInsets.only(top: 20),
     child: AppButton(
       text: 'Back to home',
       verticalPadding: 15,
       fontSize: 18,
     ),
                );
  }
}

class TrackOrderButton extends StatelessWidget {
  const TrackOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  AppButton(
     text: 'Track order',
     verticalPadding: 15,
     fontSize: 18,
                );
  }
}




