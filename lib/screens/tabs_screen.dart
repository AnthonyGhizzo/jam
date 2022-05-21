import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:my_jam/pages/home/home_page.dart';
import 'package:my_jam/pages/tree/tree_page.dart';
import 'package:my_jam/screens/settings/settings_screen.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [const HomePage(), const TreePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const SettingsDrawer(),
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: CustomNavigationBar(
            iconSize: 30.0,
            selectedColor: Colors.deepPurpleAccent,
            strokeColor: const Color(0x30040307),
            unSelectedColor: const Color(0xffacacac),
            backgroundColor: Colors.white,
            items: [
              CustomNavigationBarItem(icon: const Icon(Icons.home)),
              CustomNavigationBarItem(
                  icon: const Icon(Icons.account_tree_rounded))
            ],
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }));
  }
}