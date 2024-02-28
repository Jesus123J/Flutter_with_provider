//How is use this class ?

import 'package:flutter/material.dart';

class _NavigationService {
  //!

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigatorTo({required String routeName}) =>
      navigatorKey.currentState!.pushNamed(routeName);

  void goBack() => navigatorKey.currentState!.pop();
}

final navigatorService = _NavigationService();
