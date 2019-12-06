import 'package:flutter/material.dart';

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
          return Text(categoryMeals[i].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
