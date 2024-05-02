import '../home_screen/imports.dart';

AppBar appBar(BuildContext context) {
  const EdgeInsetsGeometry bannerPadding =
      EdgeInsets.only(left: 20, top: 9, bottom: 5);
  const EdgeInsetsGeometry actionPadding =
      EdgeInsets.only(top: 9, bottom: 5, right: 10);

  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColor.searchColor, // Navigation bar
      statusBarColor: AppColor.darkBackgroundColor, // Status bar
    ),
    leadingWidth: MediaQuery.of(context).size.width / 1.2,
    scrolledUnderElevation: 0.0,
    leading: const Padding(
      padding: bannerPadding,
      child: TextField(
        style: TextStyle(color: AppColor.textColor),
        decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search,
              size: 25,
            ),
            suffixIcon: Icon(
              Icons.mic_none,
              size: 25,
            )),
        maxLines: 1,
      ),
    ),
    actions: [
      Padding(
        padding: actionPadding,
        child: IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_none)),
      )
    ],
  );
}
