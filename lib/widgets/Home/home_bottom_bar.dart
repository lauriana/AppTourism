import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {

    // final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 2,
      items: const [
        Icon(
          Icons.location_on_outlined,
          size: 30,
        ),
        Icon(
          Icons.favorite_outline,
          size: 30,
        ),
        Icon(
          Icons.home,
          size: 30,
          color: Color(0XFF1149C3),
        ),
        Icon(
          Icons.edit_outlined,
          size: 30,
        ),
        Icon(
          Icons.person_outline,
          size: 30,
        ),
      ],
      color: const Color.fromARGB(66, 165, 163, 163),
    );
  }
}
