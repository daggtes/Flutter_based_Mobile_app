import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controllers/popular_product_controller.dart';
import 'package:untitled/pages/food/popular_food_detail.dart';
import 'package:untitled/pages/food/recommeneded_food_detail.dart';
import 'package:untitled/pages/home/main_food_page.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: RecommenededFoodDetail(),
    );
  }
}
