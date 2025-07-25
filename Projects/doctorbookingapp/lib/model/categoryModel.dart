

class CategoryModel {
  String vector;
  bool isSelected;
  CategoryModel({required this.vector, required this.isSelected});


}
List<CategoryModel> getCategory(){
  List<CategoryModel> category=[];
  category.add(CategoryModel(vector: 'assets/images/icons/blood-1.svg', isSelected: false));
  category.add(CategoryModel(vector: 'assets/images/icons/nose.svg', isSelected: false));
  category.add(CategoryModel(vector: 'assets/images/icons/bone.svg', isSelected: false));
  category.add(CategoryModel(vector: 'assets/images/icons/liver.svg', isSelected: false));
  category.add(CategoryModel(vector: 'assets/images/icons/lung.svg', isSelected: false));
  return category;
}