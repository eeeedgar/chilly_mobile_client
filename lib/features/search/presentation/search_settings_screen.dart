import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/features/filter/domain/filter_cubit.dart';
import 'package:chilly_mobile_client/features/search/domain/search_change_notifier.dart';
import 'package:chilly_mobile_client/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchSettingsScreen extends StatefulWidget {
  const SearchSettingsScreen({super.key});

  @override
  State<SearchSettingsScreen> createState() => _SearchSettingsScreenState();
}

class _SearchSettingsScreenState extends State<SearchSettingsScreen> {
  final _minLat = TextEditingController();
  final _maxLat = TextEditingController();
  final _minLong = TextEditingController();
  final _maxLong = TextEditingController();

  @override
  void initState() {
    super.initState();
    final search = getIt<SearchChangeNotifier>();
    _minLat.text = '${search.settings.minLatitude ?? -90}';
    _maxLat.text = '${search.settings.maxLatitude ?? 90}';
    _minLong.text = '${search.settings.minLongitude ?? -90}';
    _maxLong.text = '${search.settings.maxLongitude ?? 90}';
  }

  @override
  Widget build(BuildContext context) {
    final search = getIt<SearchChangeNotifier>();
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, filterState) {
        return ListenableBuilder(
          listenable: search,
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Search settings',
                  style: AppTextStyle.h1,
                ),
              ),
              body: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  ListTile(
                    title: Text(
                      'Show my favorites only',
                      style: AppTextStyle.body,
                    ),
                    trailing: Checkbox(
                      value: filterState.favoritesOnly,
                      onChanged: (bool? value) {
                        context
                            .read<FilterCubit>()
                            .setFavoritesOnly(value ?? false);
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Show created only by me',
                      style: AppTextStyle.body,
                    ),
                    trailing: Checkbox(
                      value: filterState.myOwnOnly,
                      onChanged: (bool? value) {
                        context
                            .read<FilterCubit>()
                            .setMyOwnOnly(value ?? false);
                      },
                    ),
                  ),
                  ListTile(
                    trailing: Checkbox(
                      value: !search.settings.onlyActive,
                      onChanged: (bool? value) {
                        search.setOnlyActive(!(value ?? true));
                      },
                    ),
                    title: Text(
                      'Show outdated activities',
                      style: AppTextStyle.body,
                    ),
                  ),
                  ListTile(
                    trailing: Checkbox(
                      value: search.settings.inRange,
                      onChanged: (bool? value) {
                        search.setInRange(value ?? false);
                      },
                    ),
                    title: Text(
                      'Limit area',
                      style: AppTextStyle.body,
                    ),
                  ),
                  if (search.settings.inRange)
                    Form(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('Latitude', style: AppTextStyle.body),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: TextFormField(
                              controller: _minLat,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: 'min',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: TextFormField(
                              controller: _maxLat,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: 'max',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text('Longitude', style: AppTextStyle.body),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: TextFormField(
                              controller: _minLong,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: 'min',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: TextFormField(
                              controller: _maxLong,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: 'max',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      search.setAreaLimits(
                        double.parse(_minLat.text),
                        double.parse(_maxLat.text),
                        double.parse(_minLong.text),
                        double.parse(_maxLong.text),
                      );
                      appRouter.pop();
                    },
                    child: const Text('Apply'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
