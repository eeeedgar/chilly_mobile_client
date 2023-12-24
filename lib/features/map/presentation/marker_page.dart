import 'package:auto_route/annotations.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/di/user_change_notifier.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';
import 'package:chilly_mobile_client/features/activity/presentation/create_activity_modal.dart';
import 'package:chilly_mobile_client/features/activity/presentation/view_activity_modal.dart';
import 'package:chilly_mobile_client/features/events/domain/activity_cubit.dart';
import 'package:chilly_mobile_client/features/filter/domain/filter_cubit.dart';
import 'package:chilly_mobile_client/features/user/domain/user_cubit.dart';
import 'package:chilly_mobile_client/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '/app/common/misc/tile_providers.dart';

@RoutePage()
class MarkerScreen extends StatefulWidget {
  const MarkerScreen({super.key});

  @override
  State<MarkerScreen> createState() => _MarkerScreenState();
}

class _MarkerScreenState extends State<MarkerScreen> {
  Alignment selectedAlignment = Alignment.topCenter;
  bool counterRotate = true;

  final _mapController = MapController();

  late final customMarkers = <Marker>[];

  final _focusNode = FocusNode();

  bool _searchActive = false;
  final _searchController = TextEditingController();

  Marker buildPin(LatLng point) => Marker(
        point: point,
        child: const Icon(Icons.location_pin, size: 60, color: Colors.black),
        width: 60,
        height: 60,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, userState) {
        return BlocBuilder<FilterCubit, FilterState>(
          builder: (context, filterState) {
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.compass_calibration),
                onPressed: () {
                  _mapController.move(const LatLng(59.937500, 30.308611), 10);
                  _mapController.rotate(0);
                },
              ),
              appBar: AppBar(
                leading: IconButton(
                  onPressed: _logout,
                  icon: const Icon(Icons.logout),
                ),
                title: _searchActive
                    ? TextField(
                        controller: _searchController,
                        focusNode: _focusNode,
                        onChanged: (value) {
                          context.read<FilterCubit>().setSearchText(value);
                        },
                      )
                    : Text(
                        'Activity Map',
                        style: AppTextStyle.h1,
                      ),
                actions: [
                  IconButton(
                      onPressed: () {
                        _searchActive = !_searchActive;
                        if (_searchActive) {
                          _focusNode.requestFocus();
                        }
                        setState(() {});
                      },
                      icon: const Icon(Icons.search)),
                  IconButton(
                    onPressed: () {
                      context
                          .read<FilterCubit>()
                          .setFavoritesOnly(!filterState.favoritesOnly);
                      // setState(() {});
                    },
                    icon: filterState.favoritesOnly
                        ? const Icon(Icons.favorite, color: Colors.pink)
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  Builder(builder: (context) {
                    return Flexible(
                      child: FlutterMap(
                        mapController: _mapController,
                        options: MapOptions(
                          initialCenter: const LatLng(59.937500, 30.308611),
                          initialZoom: 10,
                          onTap: (_, p) async {
                            if (_focusNode.hasPrimaryFocus) {
                              _focusNode.unfocus();
                              setState(() {});
                              return;
                            }
                            customMarkers.add(buildPin(p));
                            _mapController.move(p, 15);
                            await showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => SafeArea(
                                      top: false,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: CreateActivityModal(
                                          point: p,
                                        ),
                                      ),
                                    ));
                            customMarkers.clear();
                            setState(() {});
                          },
                          interactionOptions: const InteractionOptions(
                              // flags: ~InteractiveFlag.doubleTapZoom,
                              ),
                        ),
                        children: [
                          openStreetMapTileLayer,
                          BlocBuilder<ActivityCubit, ActivityState>(
                            builder: (context, state) {
                              customMarkers.clear();
                              return MarkerLayer(
                                markers: customMarkers
                                  ..addAll(state
                                      .applyFilter(filterState,
                                          context.read<UserCubit>())
                                      .map((e) => Marker(
                                            point: LatLng(e.lat!, e.long!),
                                            child: GestureDetector(
                                              onTap: () {
                                                _mapController.move(
                                                    LatLng(e.lat!, e.long!),
                                                    15);
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    context: context,
                                                    builder: (context) =>
                                                        SafeArea(
                                                          top: false,
                                                          child: Padding(
                                                            padding: EdgeInsets.only(
                                                                bottom: MediaQuery.of(
                                                                        context)
                                                                    .viewInsets
                                                                    .bottom),
                                                            child:
                                                                ViewActivityModal(
                                                              event: e,
                                                            ),
                                                          ),
                                                        ));
                                              },
                                              child: Icon(Icons.location_pin,
                                                  size: 60,
                                                  color: context
                                                          .read<UserCubit>()
                                                          .isInFavorites(e.id!)
                                                      ? Colors.pink
                                                      : Colors.black),
                                            ),
                                            width: 60,
                                            height: 60,
                                          ))
                                      .toList()),
                                rotate: counterRotate,
                                alignment: selectedAlignment,
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _logout() {
    getIt<UserChangeNotifier>().clear();
    appRouter.replace(const LoginRoute());
  }
}
