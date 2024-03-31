import 'package:get/get.dart';
import 'package:list_menu/app/data/models/list_recipe_model.dart';

class ListRecipeProvider extends GetConnect {
  Future<Listrecipe> getListrecipe(String category) async {
    final response = await get(
        "https://www.themealdb.com/api/json/v1/1/filter.php?c=$category");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return Listrecipe.fromJson(response.body as Map<String, dynamic>);
    }
  }
}
