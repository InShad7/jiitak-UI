import 'package:flutter/material.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/utils/utils.dart';

class AddImgSection extends StatelessWidget {
  const AddImgSection(
      {super.key,
      this.title,
      this.subtitle,
      this.added = false,
      this.option = false});
  final title;
  final subtitle;
  final added;
  final option;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      height: option ? mHeight! / 4.7 : mHeight! / 3.8,
      color: white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              maxLines: 1,
              text: TextSpan(children: [
                TextSpan(
                  text: title,
                  style: const TextStyle(
                    color: black,
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: option ? '' : '*',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: subtitle,
                  style: const TextStyle(
                    color: grey,
                    fontSize: 18,
                  ),
                ),
              ]),
            ),
            Container(
              height: mHeight! / 5.5,
              width: mWidth,
              color: white,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: added ? 3 : 2,
                      itemBuilder: (context, index) => Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            height: mHeight! / 5,
                            width: mWidth! / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(
                                  added
                                      ? 'assets/office.png'
                                      : 'assets/store.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 8,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.close,
                                color: white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    added
                        ? const SizedBox()
                        : Container(
                            margin: const EdgeInsets.all(8),
                            height: mHeight! / 5,
                            width: mWidth! / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: grey,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                              color: white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.image_outlined,
                                      color: grey,
                                      size: 60,
                                    ),
                                  ),
                                  const CustomText(
                                    title: "写真を追加",
                                    fontsize: 18,
                                    color: grey,
                                  ),
                                ]),
                          ),
                  ],
                ),
              ),
            ),
            kHeight,
          ]),
    );
  }
}
