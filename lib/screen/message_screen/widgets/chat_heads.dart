import 'package:himalayan_delights/screen/message_screen/imports.dart';

class ChatHeads extends StatelessWidget {
  const ChatHeads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.only(top: 10, right: 12);

    List<String> images = [
      'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png',
      'https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png',
      'https://buffer.com/library/content/images/2020/05/Ash-Read.png',
      'https://www.filepicker.io/api/file/sbZZWLy1RZeMzaAstrcQ',
      'https://leadershipcircle.com/wp-content/uploads/2022/07/Tyson-Andrus.png',
      'https://leadershipcircle.com/wp-content/uploads/2022/07/David-Spach-18.png'
    ];
    List<String> names = ['Apple', 'Ball', 'Cat', 'Dog', 'Elephant', 'Fish'];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: bodyPadding,
              child: ChatHeadImage(image: images[index]),
            ),
            SizedBox(height: getDeviceExactHeight(8, mediaQ)),
            LabelText(text: names[index], size: 16),
          ],
        );
      },
    );
  }
}

