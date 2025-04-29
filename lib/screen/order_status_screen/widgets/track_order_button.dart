import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class TrackOrderButton extends StatelessWidget {
  const TrackOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Track order',
      verticalPadding: 15,
      fontSize: 18,
      ontap: () => context.go('/trackOrderScreen'),
    );
  }
}
