import 'package:flutter/material.dart';
import 'package:meal_app/widget/meal_item.dart';

import '../model/dummy_category.dart';

 class CategoryMeal extends StatelessWidget {
//   const CategoryMeal({Key key}) : super(key: key);
 final String categoryId;
  final String categoryTitle;

  CategoryMeal(this.categoryId,this.categoryTitle);
 
  @override
  Widget build(BuildContext context) {
    final categoryMealDetail = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return MealItem(
          id: categoryMealDetail[index].id,
          title:categoryMealDetail[index].title,
        imageUrl: categoryMealDetail[index].imageUrl,
        duration: categoryMealDetail[index].duration,
        complexity: categoryMealDetail[index].complexity,
        affordability: categoryMealDetail[index].affordability,);
      },
      itemCount: categoryMealDetail.length,),
    );
  }
}