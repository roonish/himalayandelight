import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:himalayan_delights/screen/order_status_screen/imports.dart';
import 'package:himalayan_delights/utils/secrets.dart';
import 'package:latlong2/latlong.dart';
import 'package:permission_handler/permission_handler.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  void initState() {
    super.initState();
    locationPermission();
  }

//find instant location of the user
  Position? _currentPosition;
  _determinePosition() {
    Geolocator.getPositionStream().listen((event) {
      _currentPosition = event;
    });
  }

  Future<void> locationPermission() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      var statuslocation = await Permission.location.status;
      if (statuslocation.isDenied) {
        Map<Permission, PermissionStatus> status =
            await [Permission.location].request();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: _determinePosition(),
        builder: (context, snapshot) {
          return FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(39.920740, 32.854072),
              initialZoom: 5,
            ),
            children: [
              TileLayer(
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/ronish8/clwl0pfoy041t01qg1yho5oun/wmts?access_token=$mapApiKey",
                  additionalOptions: {
                    'accessToken': mapApiKey,
                  }),
              // LocationMarkerLayer(position: LocationMarkerPosition(latitude: latitude, longitude: longitude, accuracy: accuracy))
            ],
          );
        });
  }
}
