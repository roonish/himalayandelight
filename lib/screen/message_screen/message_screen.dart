import 'package:himalayan_delights/screen/message_screen/imports.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png',
      'https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png',
      'https://buffer.com/library/content/images/2020/05/Ash-Read.png',
      'https://www.filepicker.io/api/file/sbZZWLy1RZeMzaAstrcQ',
      'https://leadershipcircle.com/wp-content/uploads/2022/07/Tyson-Andrus.png',
      'https://leadershipcircle.com/wp-content/uploads/2022/07/David-Spach-18.png'
    ];
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry gapPadding =
        EdgeInsets.symmetric(horizontal: 15.0);
    const EdgeInsetsGeometry containerMargin = EdgeInsets.symmetric(
      vertical: 10,
    );
    return Scaffold(
      appBar: appBar(context, title: 'Messages'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: getDeviceExactHeight(130, mediaQ),
              child: const ChatHeads()),
          Expanded(
            child: Padding(
              padding: gapPadding,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: containerMargin,
                    child: Row(
                      children: [
                        ChatHeadImage(
                          image: images[index],
                          circleAvatarRadius: 30,
                          imageRadius: 28,
                        ),
                        SizedBox(
                          width: getDeviceExactWidth(10, mediaQ),
                        ),
                        const MessageList()
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
