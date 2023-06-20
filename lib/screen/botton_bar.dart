import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:latihan/screen/home_screen.dart';
import 'package:latihan/screen/news_page.dart';
import 'match_page.dart';
class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget>[
    const HomeScreen(),
    const NewsPage(),
    const MatchPage(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFF82AAE3),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor:const Color(0xFF91D8E4),
        items: const[
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
           activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
           label: "Home"),
          // BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          //  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          //  label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_news_regular), 
           activeIcon: Icon(FluentSystemIcons.ic_fluent_news_filled),
           label: "Berita"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_broad_activity_feed_filled),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), 
            label: "match"),
        ],
      ),
    );
  }
}