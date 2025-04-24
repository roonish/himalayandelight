import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:himalayan_delights/bloc/cartItem/cart_item_bloc.dart';
import 'package:himalayan_delights/screen/cart_screen/imports.dart';
import 'package:himalayan_delights/screen/error_screen/error_screen.dart';
import 'package:himalayan_delights/widgets/loading.dart' show LoadingScreen;

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final ValueNotifier<int> itemCount = ValueNotifier<int>(1);

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
      appBar: appBar(
        context,
        title: 'My cart',
        showAction: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: BlocBuilder<CartItemBloc, CartItemState>(
          builder: (context, state) {
            if (state is CartItemLoading) {
              return LoadingScreen();
            }
            if (state is CartItemFailed) {
              return ErrorScreen(errorText: state.errorMsg);
            }
            if (state is CartItemFoodListSuccess) {
              return Column(
                children: [
                  CartList(cartDetail: state.cartDetail),
                  const Spacer(),
                  TotalCost(
                    subTotal: state.cartDetail.totalSubtotal,
                  ),
                  const AppButton(
                    text: 'Check Out',
                    verticalPadding: 13,
                  )
                ],
              );
            }

            // Return nothing if no matching state
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
