import 'package:himalayan_delights/screen/message_screen/imports.dart';

class ChatHeadImage extends StatelessWidget {
  const ChatHeadImage({
    super.key,
    required this.image,
    this.circleAvatarRadius = 40,
    this.imageRadius = 38,
  });

  final String image;
  final double circleAvatarRadius;
  final double imageRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: circleAvatarRadius,
      backgroundColor: AppColor.primaryColor,
      child: CircularImage(radius: imageRadius, image: image),
    );
  }
}
