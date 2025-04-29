import 'package:himalayan_delights/screen/message_screen/imports.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry containerPadding = EdgeInsets.all(10);
    return Expanded(
      child: Container(
        padding: containerPadding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.searchColor),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelText(
                  text: 'Alisha',
                  size: 18,
                ),
                LabelText(
                  text: 'Hello',
                  size: 15,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.delete),
                LabelText(
                  text: '20 min ago',
                  size: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
