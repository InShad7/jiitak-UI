import 'package:flutter/material.dart';
import 'package:jiitak/view/store_creen/widget/drop_down.dart';
import 'package:jiitak/view/utils/utils.dart';

class SelectTimeOption extends StatelessWidget {
  const SelectTimeOption({super.key, this.title, this.category = false});
  final category;

  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: mHeight! / 8,
      color: white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            kHeight,
            DropdownRow(category: category),
            kHeight,
          ]),
    );
  }
}
