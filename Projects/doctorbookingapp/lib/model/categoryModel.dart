class categoryModel {
  String vector;
  bool isSeleated;
  categoryModel({required this.vector, required this.isSeleated});
}
List<categoryModel> getCategory(){
  List<categoryModel> category=[];
  category.add(categoryModel(vector: 'assets/vectors/doctor.svg', isSeleated: false));
  category.add(categoryModel(vector: 'assets/vectors/hospital.svg', isSeleated: false));
  category.add(categoryModel(vector: 'assets/vectors/clinic.svg', isSeleated: false));
  return category;
}