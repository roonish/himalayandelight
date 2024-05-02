import '../home_screen/imports.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({
    super.key,
    required this.contentImage,
  });

  final List contentImage;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry boxMargin = EdgeInsets.only(bottom: 30);
    const EdgeInsetsGeometry boxPadding = EdgeInsets.all(12);
    const EdgeInsetsGeometry textPadding = EdgeInsets.only(top: 5, bottom: 2);

    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            childAspectRatio: 0.76,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.loose,
            children: [
              Container(
                margin: boxMargin,
                padding: boxPadding,
                decoration: BoxDecoration(
                    color: AppColor.searchColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      height: 95,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(7)),
                      child: CachedNetworkImage(
                        imageUrl: contentImage[index],
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    const Padding(
                      padding: textPadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Chinese'),
                          Text('\$ 4.00'),
                        ],
                      ),
                    ),
                    Row(
                      children: List.generate(
                          5,
                          (index) => const Icon(
                                Icons.star,
                                color: AppColor.ratingColor,
                                size: 12,
                              )),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: FloatingActionButton(
                    backgroundColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: AppColor.searchColor,
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
