import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/app_map/data/model/source_response.dart';
import 'package:project_init/features/app_map/presentation/provider/app_map_provider.dart';
import 'package:project_init/features/app_map/presentation/screens/widgets/map_info_widget.dart';
import 'package:project_init/features/common/app_loading_widget.dart';

class PlaceCircleBody extends ConsumerStatefulWidget {
  const PlaceCircleBody({super.key});

  @override
  ConsumerState<PlaceCircleBody> createState() => PlaceCircleBodyState();
}

class PlaceCircleBodyState extends ConsumerState<PlaceCircleBody> {
  late MaplibreMapController controller;

  Future<void> _onMapCreated(MaplibreMapController controller) async {
    this.controller = controller;

    await Future.delayed(Durations.extralong1);

    controller.onCircleTapped.add(_onCircleTapped);
    _add(ref.read(appMapProvider).value ?? []);
  }

  @override
  void dispose() {
    controller.onCircleTapped.remove(_onCircleTapped);
    super.dispose();
  }

  void _onCircleTapped(Circle circle) {
    if (circle.data == null) {
      return;
    }
    final circleData =
        SourceResponse.fromJson(circle.data! as Map<String, dynamic>);
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 12),
          decoration: const BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MapInfoWidget(
                title: 'Regions',
                description: circleData.properties?.region,
              ),
              MapInfoWidget(
                title: 'Sub Region',
                description: circleData.properties?.subregion,
              ),
              MapInfoWidget(
                title: 'Name Alt',
                description: circleData.properties?.nameAlt,
              ),
              MapInfoWidget(
                title: 'Feature class',
                description: circleData.properties?.featureclass,
              ),
              MapInfoWidget(
                title: 'Comment',
                description: circleData.properties?.comment,
              ),
              MapInfoWidget(
                title: 'Longitude',
                description: circleData.geometry?.coordinates?.first.toString(),
              ),
              MapInfoWidget(
                  title: 'Latitude',
                  description: circleData.geometry?.coordinates?[1].toString(),),
            ],
          ),
        );
      },
    );
  }

  Future<void> _add(List<SourceResponse> sourceResponse) async {
    controller.addCircles(
      sourceResponse
          .asMap()
          .map(
            (i, element) => MapEntry(
              i,
              CircleOptions(
                circleRadius: 4,
                circleStrokeColor: '#FF0000',
                circleStrokeWidth: 1.4,
                circleOpacity: 0,
                draggable: false,
                geometry: LatLng(
                  sourceResponse[i].geometry?.coordinates?[1] ?? 0,
                  sourceResponse[i].geometry?.coordinates?.first ?? 0,
                ),
              ),
            ),
          )
          .values
          .toList(),
      sourceResponse
          .map(
            (e) => e.toJson(),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(appMapProvider);

    return state.when(
      data: (data) => MaplibreMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition:
            const CameraPosition(target: LatLng(13.91, -60.9), zoom: 1),
      ),
      error: (error, stackTrace) => const Text('Error'),
      loading: () => const AppLoadingWidget(),
    );
  }
}
