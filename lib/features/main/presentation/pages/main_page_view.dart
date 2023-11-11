import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unimap/features/home/presentation/pages/home_page_view.dart';
import 'package:unimap/features/profile/presentation/pages/profile_page_view.dart';
import 'package:unimap/features/search/presentation/pages/search_page_view.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int _index = 0;
  final _pages = [
    const HomePageView(),
    const SearchPageView(),
    const ProfilePageView()
  ];
  final _destinations = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        activeIcon: SvgPicture.asset(
          "assets/home.svg",
          width: 25,
        ),
        icon: SvgPicture.asset(
          "assets/home-outline.svg",
          width: 25,
        ),
        label: "Axtar"),
    BottomNavigationBarItem(
        activeIcon: SvgPicture.asset(
          "assets/search.svg",
          width: 25,
        ),
        icon: SvgPicture.asset(
          "assets/search-outline.svg",
          width: 25,
        ),
        label: "Axtar"),
    BottomNavigationBarItem(
        activeIcon: SvgPicture.asset(
          "assets/person.svg",
          width: 25,
        ),
        icon: SvgPicture.asset(
          "assets/person-outline.svg",
          width: 25,
        ),
        label: "Profil"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_index],
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(),
          selectedItemColor: Colors.black,
          items: _destinations,
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
        ));
  }
}
