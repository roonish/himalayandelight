import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/bloc/fav/fav_bloc.dart';
import 'package:himalayan_delights/screen/detail_screen/imports.dart';
import 'package:himalayan_delights/screen/error_screen/error_screen.dart';
import 'package:himalayan_delights/screen/favourite_screen/widgets/item_card.dart';

import '../../widgets/loading.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.symmetric(horizontal: 18);

    List<String> images = [
      'https://live.staticflickr.com/65535/53617693698_9a55f62c16_o.png',
      'https://live.staticflickr.com/65535/53618118025_5d5e220b88_o.png',
      'https://live.staticflickr.com/65535/53616607487_9869776fea_o.png',
      'https://live.staticflickr.com/65535/53617689693_ebdfd3f69d_o.png',
      'https://live.staticflickr.com/65535/53617817444_fcbbbe1d9d_o.png',
      'https://live.staticflickr.com/65535/53616799242_b058204944_o.png',
      'https://live.staticflickr.com/65535/53616610952_c650a01233_o.png',
      'https://live.staticflickr.com/65535/53616610192_9bf2ccdac9_o.png',
      'https://live.staticflickr.com/65535/53617933095_ec64419a9e_o.png',
      'https://live.staticflickr.com/65535/53617489501_9dc8b39717_o.png',
      'https://live.staticflickr.com/65535/53617674586_72541f5a53_o.png',
      'https://live.staticflickr.com/65535/53616483042_8ca21b57ba_o.jpg',
    ];
    return Scaffold(
        appBar: appBar(context, title: 'Favourite', showLeadingIcon: false),
        body: Padding(
          padding: bodyPadding,
          child: BlocBuilder<FavBloc, FavState>(
            builder: (context, state) {
              if (state is FavInitial) {}
              if (state is FavFailed) {
                return ErrorScreen(
                  errorText: state.errorMsg,
                );
              }
              if (state is FavLoading) {
                return LoadingScreen();
              }
              if (state is FavFoodListSuccess) {
                return ListView.builder(
                  itemCount: state.favFoodItem.length,
                  itemBuilder: (context, index) {
                    return ItemCard(
                      image: images[index],
                      foodName: state.favFoodItem[index].foodItem.name,
                      desc: state.favFoodItem[index].foodItem.desc,
                      rating: state.favFoodItem[index].foodItem.rating,
                    );
                  },
                );
              }
              return SizedBox();
            },
          ),
        ));
  }
}
