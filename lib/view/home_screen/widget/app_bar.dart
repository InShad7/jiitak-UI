import 'package:flutter/material.dart';
import 'package:jiitak/view/home_screen/widget/fav_icon.dart';
import 'package:jiitak/view/utils/utils.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key});
  final Size preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: white,
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: mHeight! / 23,
                width: mWidth! / 1.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: cardClr2,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 4),
                  child: TextFormField(
                    controller: searchController,
                    cursorColor: black,
                    style: const TextStyle(
                      color: black,
                    ),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(3),
                      hintText: '北海道, 札幌市',
                      hintStyle: TextStyle(
                        fontSize: mHeight! / 54,
                        color: black,
                      ),
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.tune_outlined,
                size: 32,
                color: grey,
              ),
              FavIcon(app: true)
            ],
          ),
        ),
      ],
    );
  }
}
