import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/store_creen/store_screen.dart';
import 'package:jiitak/view/utils/utils.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            title: 'スタンプ獲得履歴',
            fontsize: 20,
          ),
          kHeight20,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              height: mHeight! / 9,
              color: white,
              child: InkWell(
                onTap: () {
                  Get.to(
                    () => const StoreScreen(),
                    transition: Transition.cupertino,
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CustomText(
                      title: '2021 / 11 / 18',
                      fontsize: 18,
                      color: grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomText(
                          title: 'スタンプを獲得しました。',
                          fontsize: 20,
                          color: black,
                        ),
                        Text(
                          '1 個',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: black,
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: grey,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
