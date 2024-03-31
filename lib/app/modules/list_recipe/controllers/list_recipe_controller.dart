import 'package:get/get.dart';

import '../../../data/models/list_recipe_model.dart';
import '../../../data/providers/list_recipe_provider.dart';

class ListRecipeController extends GetxController {
  Future<Listrecipe> getListrecipe(String category) async {
    final data = await ListRecipeProvider().getListrecipe(category);
    return data;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
