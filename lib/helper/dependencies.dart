import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/controllers/popular_product_controller.dart';
import 'package:untitled/data/api/api_client.dart';
import 'package:untitled/data/repository/popular_product_repo.dart';

Future<void> init()async{
// api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http:/mvs.bslmeiyu.com"));
// repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}