import 'package:flutter/material.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/utils/utils.dart';

class StampRow extends StatelessWidget {
  const StampRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight! / 3,
      margin: const EdgeInsets.only(left: 15),
      // color: white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              width: mWidth / 1.2,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: containerShadow,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StampIcon(),
                    StampIcon(),
                    StampIcon(),
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: CustomText(
                title: '2 / 2枚目',
                fontsize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StampIcon extends StatelessWidget {
  StampIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mHeight! / 13,
      width: mWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => SizedBox(
          width: mWidth! / 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return linearGradient;
                },
                child: const Icon(
                  Icons.verified_rounded,
                  size: 48,
                  color: white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 
}
