import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/utils/utils.dart';

class DateRow extends StatelessWidget {
  DateRow({Key? key}) : super(key: key);

  final RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: mHeight! / 8,
      color: white,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 11,
        itemBuilder: (context, index) => Obx(
          () => DateCard(
            index: index,
            isSelected: index == selectedIndex.value,
            onTap: () {
              selectedIndex.value = index;
            },
          ),
        ),
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  DateCard(
      {Key? key,
      required this.index,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 4, bottom: 4, top: 4),
        height: mHeight! / 6.5,
        width: mWidth! / 6,
        decoration: BoxDecoration(
          color: isSelected ? yellow : white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              '木',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '26',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
