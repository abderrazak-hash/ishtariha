import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ishtariha/constants.dart';
import 'package:ishtariha/controllers/navbar_controller.dart';
import 'package:ishtariha/utils.dart';
import 'package:provider/provider.dart';

class IshtarihaNaviagtion extends StatelessWidget {
  const IshtarihaNaviagtion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
        builder: (context, navigationController, child) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationController.currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                getIcon('home'),
                color: navigationController.currentIndex == 3 ? mainClr : grey,
              ),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                getIcon('home'),
                color: navigationController.currentIndex == 2 ? mainClr : grey,
              ),
              label: 'المفضلة',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                getIcon('ad'),
                color: navigationController.currentIndex == 1 ? mainClr : grey,
              ),
              label: 'إعلاناتي',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                getIcon('settings'),
                color: navigationController.currentIndex == 0 ? mainClr : grey,
              ),
              label: 'اﻹعدادات',
            ),
          ].reversed.toList(),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            color: mainClr,
            fontSize: 18.0,
          ),
          unselectedLabelStyle: const TextStyle(
            color: grey,
            fontSize: 15.0,
          ),
          onTap: (index) {
            navigationController.naviagte(navigationController.screens[index]);
          },
        ),
        body: SafeArea(child: navigationController.currentScreen),
      );
    });
  }
}
