import 'package:flutter/material.dart';
import '/Model/constants_model.dart';
import '/ViewModel/Providers/provider_theme.dart';
import '../../ViewModel/Providers/provider_navigation.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: DistributorTheme(context).colors.navigationBg,
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
          ProcessNavigation(context).screenIndex(index);
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          color: DistributorTheme(context).colors.navigatActiveIcon,
        ),
        unselectedIconTheme: IconThemeData(
          color: DistributorTheme(context).colors.navigatUnactiveIcon,
        ),
        items: List.generate(
            Worlds().navigation.length,
            (index) => BottomNavigationBarItem(
                activeIcon: DistributorTheme(context).icons.navigationS[index],
                icon: DistributorTheme(context).icons.navigationU[index],
                label: DistributorTheme(context).worlds.navigation[index])));
  }
}
