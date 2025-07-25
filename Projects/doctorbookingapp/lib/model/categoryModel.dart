import 'package:flutter/src/widgets/icon_data.dart';

class CategoryModel {
  String vector;
  bool isSelected;
  CategoryModel({required this.vector, required this.isSelected});

  IconData? get icon => null;
}
List<CategoryModel> getCategory(){
  List<CategoryModel> category=[];
  category.add(CategoryModel(vector: 'assets/images/icons/blood-test.png', isSelected: false));
  category.add(CategoryModel(vector: 'assets/images/icons/capsules.png', isSelected: true));
  category.add(CategoryModel(vector: 'assets/images/icons/cardiogram.png', isSelected: false));
  category.add(CategoryModel(vector: 'assets/images/icons/hospital.png', isSelected: false));
  return category;
}