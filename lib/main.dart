import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/bloc/auth/auth_bloc.dart';
import 'package:himalayan_delights/bloc/cartItem/cart_item_bloc.dart';
import 'package:himalayan_delights/bloc/fav/fav_bloc.dart';
import 'package:himalayan_delights/bloc/recommendation/recommendation_bloc.dart';
import 'package:himalayan_delights/repositories/cart_repository.dart';
import 'package:himalayan_delights/repositories/fav_repository.dart';
import 'package:himalayan_delights/repositories/recm_repository.dart';
import 'package:himalayan_delights/route.dart';
import 'package:himalayan_delights/utils/shared_pref_helper.dart';
import 'bloc/navbar_bloc/navbar_bloc.dart';
import 'bloc/theme_bloc/theme_bloc.dart';
import 'repositories/auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'utils/secrets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefs().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthRepo _authRepo = AuthRepo();
    final ApiFavRepository _favRepository = ApiFavRepository(foodApiKey);
    final ApiRecmRepository _recmRepository = ApiRecmRepository(foodApiKey);
    final ApiCartRepository _cartRepository = ApiCartRepository(foodApiKey);

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => _authRepo,
        ),
        RepositoryProvider(
          create: (context) => _favRepository,
        ),
        RepositoryProvider(
          create: (context) => _recmRepository,
        ),
        RepositoryProvider(
          create: (context) => _cartRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeBloc(),
          ),
          BlocProvider(
            create: (context) => NavbarBloc(),
          ),
          BlocProvider(create: (context) => AuthBloc(_authRepo)),
          BlocProvider(create: (context) => FavBloc(_favRepository)),
          BlocProvider(
              create: (context) => RecommendationBloc(_recmRepository)),
          BlocProvider(create: (context) => CartItemBloc(_cartRepository)),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
                routerConfig: router, theme: state.themeData);
          },
        ),
      ),
    );
  }
}
