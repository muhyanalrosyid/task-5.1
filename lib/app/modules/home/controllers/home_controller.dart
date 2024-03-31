import 'package:get/get.dart';
import 'package:list_menu/app/data/models/category.dart';
import 'package:list_menu/app/data/providers/category_provider.dart';

class HomeController extends GetxController {
  Future<Category> getCategories() async {
    final data = await CategoryProvider().getCategories();
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
