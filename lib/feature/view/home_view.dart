import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:teamup/product/navigation/app_router.dart';
import 'package:teamup/product/widget/project_network_image.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const url =
        'https://www.kolaydi.com/static/media/profile.cfa978abb77702a3cd88.png';
    return Column(
      children: [
        ProjectAssets.images.imgShip.image(),
        const ProjectNetworkImage(url: url),
        ElevatedButton(
          child: const Text("next_Page"),
          onPressed: () {
            // For heavy transitions like complex operations
            context.router.push<bool>(HomeDetailRoute(id: "1"));
            // For simple page navigation
            context.pushRoute(HomeDetailRoute(id: "1"));
          },
        ),
      ],
    );
  }
}
