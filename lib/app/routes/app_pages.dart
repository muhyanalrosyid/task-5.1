import 'package:get/get.dart';
import 'package:list_menu/app/modules/list_recipe/bindings/list_recipe_binding.dart';
import 'package:list_menu/app/modules/list_recipe/views/list_recipe_views.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LIST_RECIPE,
      page: () => const ListRecipeView(),
      binding: ListRecipeBinding(),
    ),
  ];
}
