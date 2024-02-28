import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_with_provider/routers/routers.dart';
import 'package:flutter_with_provider/ui/layout/main_layout_view.dart';
import 'package:flutter_with_provider/ui/view/accounts_view.dart';
import 'package:flutter_with_provider/ui/view/counter_view.dart';
import 'package:flutter_with_provider/ui/view/entities_view.dart';
import 'package:flutter_with_provider/ui/view/home_view.dart';
import 'package:flutter_with_provider/ui/view/view_404.dart';

class PageRouter {
  static Route<dynamic> generatorRouter(RouteSettings confingRouter) {
    switch (confingRouter.name) {
      case Routers.home:
        return _fadeRoute(
            const MainLayoutView(child: HomeView()), Routers.home);
      case Routers.entidades:
        return _fadeRoute(
            const MainLayoutView(child: EntitiesView()), Routers.entidades);
      case Routers.perfil:
        return _fadeRoute(
            const MainLayoutView(child: AccountsView()), Routers.perfil);
      case Routers.anuncio:
        return _fadeRoute(
            const MainLayoutView(child: AccountsView()), Routers.anuncio);

      case Routers.configuracion:
        return _fadeRoute(
            const MainLayoutView(child: AccountsView()), Routers.configuracion);

      case Routers.counter:
        return _fadeRoute(
            const MainLayoutView(child: CounterView()), Routers.counter);
      default:
        return _fadeRoute(const View404(), Routers.pageNoFound);
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(opacity: animation, child: child)
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                linearTransition: true,
                child: child,
              ));
  }
}
