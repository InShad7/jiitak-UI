import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavIcon extends StatelessWidget {
  FavIcon({Key? key, this.app = false}) : super(key: key);

  final app;
  final RxBool fav = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        child: Icon(
          fav.value ? Icons.favorite : Icons.favorite_border,
          color: (app || fav.value) ? Colors.red : Colors.grey,
          size: 33,
        ),
        onTap: () {
          fav.toggle();
        },
      ),
    );
  }
}
