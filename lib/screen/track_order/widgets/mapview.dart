import 'package:himalayan_delights/screen/track_order/imports.dart';
import 'package:latlong2/latlong.dart';

class MapView extends StatefulWidget {
  final Stream<Position>? positionStream;

  const MapView({super.key, this.positionStream});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Position>(
        stream: widget.positionStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: AppColor.headerColor,
            ));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No location data available'));
          }
          final Position position = snapshot.data!;
          final LatLng latLng = LatLng(position.latitude, position.longitude);

          return FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: latLng,
              initialZoom: 18.0,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://api.mapbox.com/styles/v1/ronish8/clwl0pfoy041t01qg1yho5oun/tiles/256/{z}/{x}/{y}@2x?access_token=$mapApiKey',
                additionalOptions: {
                  'accessToken': mapApiKey,
                },
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: latLng,
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/dog_gif.gif'),
                  ),
                ],
              ),
            ],
          );
        });
  }
}
