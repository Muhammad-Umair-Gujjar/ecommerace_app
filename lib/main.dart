import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/routing/app_routes.dart';
import 'src/routing/route_names.dart';
import 'src/utils/bindings/initial_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialBinding: InitialBindings(),
      initialRoute: RouteNames.splash,
      getPages: AppRoutes.routes,
    );
  }
}
