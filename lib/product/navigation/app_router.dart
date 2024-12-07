import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teamup/view/home_detail_view.dart';
import 'package:teamup/view/home_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: HomeDetailRoute.page)
      ];
}
