import 'dart:convert';

Listrecipe listrecipeFromJson(String str) =>
    Listrecipe.fromJson(json.decode(str));

String listrecipeToJson(Listrecipe data) => json.encode(data.toJson());

class Listrecipe {
  List<Meal> meals;

  Listrecipe({
    required this.meals,
  });

  factory Listrecipe.fromJson(Map<String, dynamic> json) => Listrecipe(
        meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map((x) => x.toJson())),
      };
}

class Meal {
  String strMeal;
  String strMealThumb;
  String idMeal;

  Meal({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        strMeal: json["strMeal"],
        strMealThumb: json["strMealThumb"],
        idMeal: json["idMeal"],
      );

  Map<String, dynamic> toJson() => {
        "strMeal": strMeal,
        "strMealThumb": strMealThumb,
        "idMeal": idMeal,
      };
}
