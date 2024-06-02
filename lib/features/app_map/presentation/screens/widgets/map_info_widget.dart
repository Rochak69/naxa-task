import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class MapInfoWidget extends StatelessWidget {
  const MapInfoWidget({required this.title, super.key, this.description});
  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title: ',
          style: const TextStyle(
            fontSize: 18,
            color: AppColors.primaryDark,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: Text(
            description ?? '',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
