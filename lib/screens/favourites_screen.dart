import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavourtiesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavourtiesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet - start adding some!'),
      );
    }
    return ListView.builder(
      itemBuilder: (ctx, i) {
        var meal = favouriteMeals[i];
        return MealItem(
          id: meal.id,
          title: meal.title,
          affordability: meal.affordability,
          complexity: meal.complexity,
          duration: meal.duration,
          imageUrl: meal.imageUrl,
        );
      },
      itemCount: favouriteMeals.length,
    );
  }
}
