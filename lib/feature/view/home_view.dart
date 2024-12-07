import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teamup/product/navigation/app_router.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("next_Page"),
      onPressed: () {
        // For heavy transitions like complex operations
        context.router.push<bool>(HomeDetailRoute(id: "1"));
        // For simple page navigation
        context.pushRoute(HomeDetailRoute(id: "1"));
      },
    );
  }
}
