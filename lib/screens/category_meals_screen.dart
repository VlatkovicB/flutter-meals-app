import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryid;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryid, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryid = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          var meal = categoryMeals[i];
          return MealItem(
            id: meal.id,
            title: meal.title,
            affordability: meal.affordability,
            complexity: meal.complexity,
            duration: meal.duration,
            imageUrl: meal.imageUrl,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
