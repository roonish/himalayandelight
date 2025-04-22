import 'package:himalayan_delights/screen/authentication_screen/imports.dart';
import 'package:himalayan_delights/screen/track_order/imports.dart';
import 'package:permission_handler/permission_handler.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  Stream<Position>? _positionStream;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

//ask for location permision if not given yet
  Future<void> _requestLocationPermission() async {
    var status = await Permission.location.status;
    if (status.isDenied || status.isPermanentlyDenied) {
      status = await Permission.location.request();
    }
    if (status.isGranted) {
      _initializePositionStream();
    } else {
      // Handle the case when permission is not granted
      setState(() {
        _positionStream = Stream.error('Location permission not granted');
        _isLoading = false;
      });
    }
  }

//track user current location
// later we will change it to delivery boy location
  void _initializePositionStream() {
    setState(() {
      _positionStream = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 10,
        ),
      );
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(horizontal: 20);

    Map<IconData, String> deliveryStatus = {
      Icons.check: 'Conformed',
      Icons.card_giftcard: 'Preparing',
      Icons.bike_scooter: 'On Way',
      Icons.food_bank: 'Delivered',
    };

    return Scaffold(
      appBar: appBar(context, title: 'Track Order'),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: gapPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getDeviceExactHeight(200, mediaQ),
                      color: AppColor.primaryColor,
                      child: MapView(
                        positionStream: _positionStream,
                      ),
                    ),
                    OrderStatus(deliveryStatus: deliveryStatus),
                    const OrderDetail(
                        title: 'Order Number', detail: '5564353445'),
                    const OrderDetail(
                        title: 'Address', detail: '52 Stanland Dr. ON'),
                    InkWell(
                      child: const DeliveryDetailCart(),
                      onTap: () {
                        context.go('/CancelOrderScreen');
                      },
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
