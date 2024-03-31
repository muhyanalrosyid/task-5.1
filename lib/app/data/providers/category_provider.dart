import 'package:get/get.dart';
import 'package:list_menu/app/data/models/category.dart';

class CategoryProvider extends GetConnect {
  Future<Category> getCategories() async {
    final response =
        await get("https://www.themealdb.com/api/json/v1/1/categories.php");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return Category.fromJson(response.body as Map<String, dynamic>);
    }
  }
}
