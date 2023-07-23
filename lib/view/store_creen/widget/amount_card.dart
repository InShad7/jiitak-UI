import 'package:flutter/material.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/store_creen/widget/custom_text_field.dart';
import 'package:jiitak/view/utils/utils.dart';

class AmountCard extends StatelessWidget {
  const AmountCard({super.key, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: mHeight! / 8,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomField(hint: '¥ 1,000', amount: true),
              CustomText(title: '~', fontsize: 18),
              CustomField(hint: '¥ 2,000', amount: true)
            ],
          ),
        ],
      ),
    );
  }
}
