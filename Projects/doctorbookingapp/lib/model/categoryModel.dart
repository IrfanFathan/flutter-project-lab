class categoryModel {
  String vector;
  bool isSeleated;
  categoryModel({required this.vector, required this.isSeleated});
}
List<categoryModel> getCategory(){
  List<categoryModel> category=[];
  category.add(categoryModel(vector: vector, isSeleated: isSeleated))
}