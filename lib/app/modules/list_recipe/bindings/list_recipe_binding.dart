import 'package:get/get.dart';

import '../controllers/list_recipe_controller.dart';

class ListRecipeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListRecipeController>(
      () => ListRecipeController(),
    );
  }
}
