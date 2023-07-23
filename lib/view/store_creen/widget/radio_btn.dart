import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/utils/utils.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton({super.key, this.smoke = false});
  final smoke;

  final RxInt selectedOption = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth! / 1.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCustomRadioButton(smoke ? '有' : '月', 1),
          _buildCustomRadioButton(smoke ? '無' : '火', 2),
          smoke ? kHeight : _buildCustomRadioButton('水', 3),
          smoke ? kHeight : _buildCustomRadioButton('木', 4),
        ],
      ),
    );
  }

  Widget _buildCustomRadioButton(String title, int value) {
    return Obx(
      () => InkWell(
        onTap: () {
          selectedOption.value = value;
        },
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: selectedOption == value ? checkOrange : null,
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: selectedOption == value ? checkOrange : grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: selectedOption == value
                    ? const Icon(
                        Icons.check,
                        color: white,
                        size: 15,
                      )
                    : null,
              ),
            ),
            kWidth,
            CustomText(
              title: title,
              fontsize: 18,
              color: black,
            ),
          ],
        ),
      ),
    );
  }
}
