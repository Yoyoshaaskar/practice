import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_work/main.dart';
import 'package:practice_work/presentation/homePage/homePage.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      name: 'WebViewRoute',
      page: WebViewPage,
      initial: true,
    ),
    AutoRoute(path: 'home', page: HomePage, name: 'HomeRouter')
  ],
)
@Injectable()
class AppRouter extends _$AppRouter {}
