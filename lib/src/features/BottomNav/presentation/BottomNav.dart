import 'package:bet/src/features/BetHistory/presentation/Bethistory.dart';
import 'package:bet/src/features/CuponPage/pages/CuponPage.dart';
import 'package:bet/src/features/Favourity/pages/Favourity.dart';
import 'package:bet/src/features/MainPage/pages/MainPage.dart';
import 'package:bet/src/features/Menu/pages/MenuPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNav extends StatelessWidget {
  PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarHeight: 45,
      // confineInSafeArea: true,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      // popAllScreensOnTapOfSelectedTab: true,
      // popActionScreens: PopActionScreensType.all,
      // itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
      //   duration: Duration(milliseconds: 200),
      //   curve: Curves.ease,
      // ),
      // screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
      //   animateTabTransition: true,
      //   curve: Curves.ease,
      //   duration: Duration(milliseconds: 200),
      // ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [Mainpage(), Favourity(), CouponPage(), BetHistoryPage(), MenuPage()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      contentPadding: 0,

      icon: Icon(CupertinoIcons.home),
      title: ("Популярное"),
      activeColorPrimary: ColorName.green,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      contentPadding: 0,
      icon: Icon(CupertinoIcons.settings),
      title: ("Избранное"),
      activeColorPrimary: ColorName.green,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      contentPadding: 0,
      activeColorSecondary: ColorName.white,
      icon: Icon(CupertinoIcons.home),
      title: ("купон"),
      activeColorPrimary: ColorName.green,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      contentPadding: 0,

      icon: Icon(CupertinoIcons.home),
      title: ("История"),
      activeColorPrimary: ColorName.green,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      contentPadding: 0,

      icon: Icon(CupertinoIcons.home),
      title: ("Меню"),
      activeColorPrimary: ColorName.green,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
