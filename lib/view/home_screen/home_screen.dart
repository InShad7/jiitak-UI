import 'package:flutter/material.dart';
import 'package:jiitak/view/utils/utils.dart';
import 'widget/app_bar.dart';
import 'widget/date_card.dart';
import 'widget/home_card.dart';
import 'widget/top_message.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mHeight = MediaQuery.of(context).size.height;
    mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const TopMessageCard(),
            DateRow(),
            kHeight,
            const HomeCard(),
            const HomeCard(),
            const HomeCard(),
            kHeight50
          ],
        ),
      ),
    );
  }
}
