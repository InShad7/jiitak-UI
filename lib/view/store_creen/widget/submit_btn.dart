import 'package:flutter/material.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/utils/utils.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(15),
        height: 50,
        width: mWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(
            colors: btnColor,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: const Center(
          child: CustomText(
            title: '編集を保存',
            fontsize: 20,
            color: white,
          ),
        ),
      ),
    );
  }
}
