import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/card_details_screen/card_details.dart';
import 'package:jiitak/view/home_screen/widget/fav_icon.dart';
import 'package:jiitak/view/utils/utils.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          () => const CardDetailsScreen(),
          transition: Transition.cupertino,
        );
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        height: mHeight! / 1.7,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: containerShadow,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: mHeight! / 3.9,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/banner.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  child: Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                        color: red, borderRadius: BorderRadius.circular(4)),
                    child: const Center(
                      child: CustomText(
                        title: '本日まで',
                        fontsize: 18,
                        color: white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            kHeight,
            Container(
              height: mHeight! / 3.5,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                      title: '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パバ)', fontsize: 20),
                  kHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: bgYellow,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Center(
                          child: CustomText(
                            title: '介護付き有料老人',
                            fontsize: 16,
                            color: yellow,
                          ),
                        ),
                      ),
                      const CustomText(title: '¥ 6,000', fontsize: 18)
                    ],
                  ),
                  const CustomText(
                      title: '5月 31日（水）08 : 00 ~ 17 : 00', fontsize: 18),
                  const CustomText(title: '北海道札幌市東雲町3丁目916番地17号', fontsize: 18),
                  const CustomText(title: '交通費 300円', fontsize: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                     const CustomText(
                        title: '住宅型有料老人ホームひまわり倶楽部',
                        color: grey,
                        fontsize: 18,
                      ),
                      FavIcon()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key, this.title, this.color, this.fontsize});

  final title;
  final color;
  final fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontsize.toDouble(),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
