import 'package:flutter/material.dart';
import 'package:jiitak/view/card_details_screen/widget/app_bar.dart';
import 'package:jiitak/view/utils/utils.dart';
import 'widget/add_image.dart';
import 'widget/amount_card.dart';
import 'widget/holiday_btn.dart';
import 'widget/custom_text_field.dart';
import 'widget/map_card.dart';
import 'widget/submit_btn.dart';
import 'widget/time_slot.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const DetailAppBar(store: true),
      body: SingleChildScrollView(
        child: Column(children: const [
          CustomTextField(
            title: '店舗名',
            hint: 'Mer キッチン',
          ),
          CustomTextField(
            title: '代表担当者名',
            hint: '林田　絵梨花',
          ),
          CustomTextField(
            title: '店舗電話番号',
            hint: '123 - 4567 8910',
          ),
          CustomTextField(
            title: '店舗住所',
            hint: '大分県豊後高田市払田791-13',
          ),
          MapCard(),
          AddImgSection(
            title: '店舗外観',
            subtitle: '（最大3枚まで）',
          ),
          AddImgSection(
            title: '店舗内観',
            subtitle: '（1枚〜3枚ずつ追加してください）',
            added: true,
          ),
          AddImgSection(
            title: '料理写真',
            subtitle: '（1枚〜3枚ずつ追加してください）',
            added: true,
          ),
          AddImgSection(
            title: 'メニュー写真',
            subtitle: '（1枚〜3枚ずつ追加してください）',
            added: true,
          ),
          SelectTimeOption(title: '営業時間'),
          SelectTimeOption(title: 'ランチ時間'),
          HolidayBtn(title: '定休日'),
          kHeight,
          SelectTimeOption(title: '料理カテゴリー', category: true),
          AmountCard(title: '予算*'),
          CustomTextField(
            title: 'キャッチコピー',
            hint: '美味しい！リーズナブルなオムライスランチ！',
          ),
          CustomTextField(
            title: '座席数',
            hint: '40席',
          ),
          HolidayBtn(title: '喫煙席', smoke: true),
          HolidayBtn(title: '駐車場', smoke: true),
          HolidayBtn(title: '来店プレゼント', smoke: true),
          AddImgSection(title: '', subtitle: '', added: true, option: true),
          CustomTextField(
            title: '来店プレゼント名',
            hint: 'いちごクリームアイスクリーム, ジュース',
          ),
          SubmitBtn(),
        ]),
      ),
    );
  }
}
