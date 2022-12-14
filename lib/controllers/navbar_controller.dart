import 'package:flutter/widgets.dart';
import 'package:ishtariha/screens/ads/my_ads_screen.dart';
import 'package:ishtariha/screens/favorites/favorites_screen.dart';
import 'package:ishtariha/screens/home/home_screen.dart';
import 'package:ishtariha/screens/settings/settings_screen.dart';

class NavigationController extends ChangeNotifier {
  List<Widget> screens = [
    const SettingsScreen(),
    const MyAdsScreen(),
    const FavoritesScreen(),
    const HomeScreen(),
  ];
  int currentIndex = 3;
  late Widget currentScreen;

  NavigationController() {
    currentScreen = screens[currentIndex];
  }

  void naviagte(Widget screen) {
    currentScreen = screen;
    if (screens.indexOf(screen) > 0) {
      currentIndex = screens.indexOf(screen);
    } else {
      currentIndex = 3;
    }
    notifyListeners();
  }
}
