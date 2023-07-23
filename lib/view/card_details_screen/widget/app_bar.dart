import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/utils/utils.dart';

class DetailAppBar extends StatelessWidget with PreferredSizeWidget {
  const DetailAppBar({super.key, this.store = false});
  final store;

  final Size preferredSize = const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: store ? white : purple,
      centerTitle: true,
      title: CustomText(
        title: store ? '店舗プロフィール編集' : 'スタンプカード詳細',
        fontsize: 20,
        color: store ? black : white,
      ),
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: store ? grey : white,
        ),
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                store
                    ? Icons.notifications_outlined
                    : Icons.do_not_disturb_on_outlined,
                color: store ? black : white,
                size: 30,
              ),
            ),
            store
                ? Positioned(
                    top: 3,
                    right: 4,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: CustomText(
                          title: '99+',
                          fontsize: 12,
                          color: white,
                        ),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        )
      ],
    );
  }
}
