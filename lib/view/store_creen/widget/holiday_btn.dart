import 'package:flutter/material.dart';
import 'package:jiitak/view/store_creen/widget/radio_btn.dart';
import 'package:jiitak/view/utils/utils.dart';

class HolidayBtn extends StatelessWidget {
  const HolidayBtn({super.key, this.title, this.smoke = false});
  final title;
  final smoke;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      height: smoke ? mHeight! / 8 : mHeight! / 5.5,
      width: mWidth,
      color: white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                      color: black,
                      fontSize: 18,
                    ),
                  ),
                  const TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            CustomRadioButton(smoke: smoke),
            smoke ? SizedBox() : CustomRadioButton(),
          ]),
    );
  }
}
