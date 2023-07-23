import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/utils/utils.dart';

import '../home_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);

  final RxInt _currentIndex = 0.obs;

  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentIndex.toInt(),
        children: _screens,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          unselectedItemColor: black,
          selectedItemColor: yellow,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _currentIndex.toInt(),
          onTap: (index) {
            // setState(() {
            _currentIndex.value = index;
            // });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'さがす',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_center_outlined),
              label: 'お仕事',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: '打刻する',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: 'チャット',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'マイページ',
            ),
          ],
        ),
      ),
    );
  }
}
