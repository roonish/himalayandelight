import 'package:himalayan_delights/screen/category_screen/imports.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.symmetric(horizontal: 15);

    return Scaffold(
        appBar: appBar(context, title: 'Categories'),
        body: const SingleChildScrollView(
          child: Padding(
            padding: bodyPadding,
            child: Column(
              children: [
                CategoriesRecommendation(title: 'Popular'),
                CategoriesRecommendation(title: 'Vegetarian'),
                CategoriesRecommendation(title: 'Barbeque'),
                CategoriesRecommendation(title: 'Chinese'),
                CategoriesRecommendation(title: 'Drinks'),
              ],
            ),
          ),
        ));
  }
}
