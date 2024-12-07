import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamup/bloc_example/counter/cubit/counter_cubit.dart';
import 'package:teamup/bloc_example/counter/view/counter_view.dart';
import 'package:teamup/product/init/application_initialize.dart';
import 'package:teamup/product/init/product_localization.dart';
import 'package:flutter/material.dart';
import 'package:teamup/product/init/theme/custom_dark_theme.dart';
import 'package:teamup/product/init/theme/custom_light_theme.dart';
import 'package:teamup/product/navigation/app_router.dart';

void main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: _appRouter.config(),
      // home: BlocProvider(
      //   create: (context) => CounterCubit(),
      //   child: const MaterialApp(
      //     title: 'Flutter state operation',
      //     home: CounterView(),
      //   ),
      // )
    );
  }
}
