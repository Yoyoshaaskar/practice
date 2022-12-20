// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    WebViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WebViewPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          WebViewRoute.name,
          path: '/',
        ),
        RouteConfig(
          HomeRouter.name,
          path: 'home',
        ),
      ];
}

/// generated route for
/// [WebViewPage]
class WebViewRoute extends PageRouteInfo<void> {
  const WebViewRoute()
      : super(
          WebViewRoute.name,
          path: '/',
        );

  static const String name = 'WebViewRoute';
}

/// generated route for
/// [HomePage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: 'home',
        );

  static const String name = 'HomeRouter';
}
