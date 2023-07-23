import 'package:flutter/material.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/utils/utils.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight! / 7.6,
      color: purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    title: 'Mer キッチン',
                    fontsize: 20,
                    color: white,
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        color: white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '現在の獲得数 ',
                        ),
                        TextSpan(
                          text: ' 30',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '個',
                        ),
                      ],
                    ),
                  )
                ]),
          ),
          Container(
            height: mHeight! / 33,
            width: mWidth,
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
          )
        ],
      ),
    );
  }
}
