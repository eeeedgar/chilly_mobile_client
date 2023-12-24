import 'dart:io';

import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/models/event.dart';
import 'package:chilly_mobile_client/app/router/app_router.dart';
import 'package:chilly_mobile_client/features/auth/domain/auth_cubit.dart';
import 'package:chilly_mobile_client/features/events/domain/activity_cubit.dart';
import 'package:chilly_mobile_client/features/filter/domain/filter_cubit.dart';
import 'package:chilly_mobile_client/features/user/domain/user_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

final appRouter = AppRouter();

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  configDi();
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  HttpOverrides.global = new MyHttpOverrides();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserCubit()..addToFavorites(1),
        ),
        BlocProvider(
          create: (context) => FilterCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => ActivityCubit()
            ..addActivity(
              AppEvent(
                id: 1,
                name: 'Running',
                description: 'Marathon',
                address: 'Embankment',
                lat: 59.956306,
                long: 30.278530,
                start: DateTime(2023),
                end: DateTime(2024),
                tags: ['Sport', 'Health'],
                photos: [],
              ),
            )
            ..addActivity(
              AppEvent(
                id: 2,
                name: 'Musical concert',
                description: 'Sonic Death',
                address: 'Theatre',
                lat: 59.844259,
                long: 30.231491,
                start: DateTime(2023),
                end: DateTime(2024),
                tags: ['Music', 'Punk'],
                photos: [],
              ),
            )
            ..addActivity(
              AppEvent(
                id: 3,
                name: 'Feeding pigeons',
                description: 'Seeds',
                address: 'Park',
                lat: 59.943757,
                long: 30.331644,
                start: DateTime(2023),
                end: DateTime(2024),
                tags: ['Birds'],
                photos: [],
              ),
            )
            ..addActivity(
              AppEvent(
                id: 4,
                name: 'Northern lights',
                description: 'Photography',
                address: 'Ladoga lake',
                lat: 60.552329,
                long: 30.605811,
                start: DateTime(2023),
                end: DateTime(2024),
                tags: ['Astro', 'Photo'],
                photos: [],
              ),
            ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
      ),
    );
  }
}
