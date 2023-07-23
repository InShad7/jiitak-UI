import 'package:flutter/material.dart';
import 'package:jiitak/view/utils/utils.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: mHeight! / 2.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: const DecorationImage(
          image: AssetImage(
            'assets/map.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
