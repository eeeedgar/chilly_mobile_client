import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_cubit.dart';
import 'package:chilly_mobile_client/features/activities/presentation/create_activity_modal.dart';
import 'package:chilly_mobile_client/features/activities/presentation/view_activity_modal.dart';
import 'package:chilly_mobile_client/features/search/domain/search_change_notifier.dart';
import 'package:chilly_mobile_client/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '/app/common/misc/tile_providers.dart';

@RoutePage()
class MarkerScreen extends StatefulWidget implements AutoRouteWrapper {
  const MarkerScreen({super.key});

  @override
  State<MarkerScreen> createState() => _MarkerScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ActivityCubit()..fetchActivities(),
      child: this,
    );
  }
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
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'settings',
            child: const Icon(Icons.settings),
            onPressed: () {
              appRouter.push(const SettingsRoute());
            },
          ),
          const SizedBox(
            height: 12,
          ),
          FloatingActionButton(
            heroTag: 'reload',
            child: const Icon(Icons.cached),
            onPressed: () {
              context.read<ActivityCubit>().fetchActivities();
            },
          ),
          const SizedBox(
            height: 12,
          ),
          FloatingActionButton(
            heroTag: 'search',
            child: const Icon(Icons.search),
            onPressed: () {
              _searchActive = !_searchActive;
              if (_searchActive) {
                _focusNode.requestFocus();
              }
              setState(() {});
            },
          ),
          const SizedBox(
            height: 12,
          ),
          FloatingActionButton(
            heroTag: 'compass',
            child: const Icon(Icons.compass_calibration),
            onPressed: () {
              _mapController.move(const LatLng(59.937500, 30.308611), 10);
              _mapController.rotate(0);
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: _searchActive
            ? TextField(
                controller: _searchController,
                focusNode: _focusNode,
                decoration: const InputDecoration.collapsed(
                  // todo: make sure
                  hintText: 'Search by tag',
                ),
                onChanged: (value) {
                  getIt<SearchChangeNotifier>().setSearchByTagText(value);
                  context.read<ActivityCubit>().fetchActivities();
                },
              )
            : Text(
                'Activity Map',
                style: AppTextStyle.h1,
              ),
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
                    _mapController.move(
                        LatLng(p.latitude - 3e-3, p.longitude), 15);
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
                              // .applyFilter(filterState,
                              //     context.read<UserCubit>())
                              .activities
                              .map((e) => Marker(
                                    point: LatLng(e.latitude, e.longitude),
                                    child: GestureDetector(
                                      onTap: () {
                                        _mapController.move(
                                            LatLng(e.latitude, e.longitude),
                                            15);
                                        showModalBottomSheet(
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (context) => SafeArea(
                                                  top: false,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: MediaQuery.of(
                                                                context)
                                                            .viewInsets
                                                            .bottom),
                                                    child: ViewActivityModal(
                                                      activity: e,
                                                    ),
                                                  ),
                                                ));
                                      },
                                      child: const Icon(
                                        Icons.location_pin,
                                        size: 60,
                                      ),
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
  }
}
