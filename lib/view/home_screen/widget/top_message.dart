import 'package:flutter/material.dart';
import 'package:jiitak/view/utils/utils.dart';

class TopMessageCard extends StatelessWidget {
  const TopMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: mHeight! / 14,
          width: mWidth,
          decoration: const BoxDecoration(gradient: orangeGradient),
          child: const Center(
            child: Text(
              '2022年 5月 26日（木） ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        kHeight20,
      ],
    );
  }
}
