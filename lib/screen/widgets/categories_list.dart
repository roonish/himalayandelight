import '../home_screen/imports.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.images,
  });

  final List images;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.only(top: 15, bottom: 30);
    const EdgeInsetsGeometry horizontalPadding = EdgeInsets.only(right: 20);
    const EdgeInsetsGeometry spacePadding = EdgeInsets.only(top: 10);

    return Padding(
      padding: gapPadding,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              12,
              (index) => Padding(
                    padding: horizontalPadding,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColor.darkBackgroundColor,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: AppImage(
                                image: images[index],
                              )),
                        ),
                        Padding(
                            padding: spacePadding, child: Text('$index ghb nn'))
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
