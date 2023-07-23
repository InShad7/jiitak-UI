import 'package:flutter/material.dart';
import 'package:jiitak/view/utils/utils.dart';

import 'widget/app_bar.dart';
import 'widget/history_list.dart';
import 'widget/stamp_row.dart';
import 'widget/top_card.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const DetailAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopCard(),
            StampRow(),
            HistoryList(),
          ],
        ),
      ),
    );
  }
}
