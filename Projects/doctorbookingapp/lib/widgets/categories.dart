import 'package:doctorbookingapp/model/categoryModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatefulWidget {
  Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<CategoryModel> CategoryData =
      getCategory();
 //Passing categoryModel date into 'CategoryDate' Variable
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text element of heading called Category
        const Padding(
          padding: EdgeInsets.only(top: 16, left: 16),
          child: Text(
            "Category",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20), //separation between section text list

        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal, //scroll direction
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: CategoryData.length, //list count
            itemBuilder: (context, index) {
              final item = CategoryData[index];

              return GestureDetector(
                onTap: (){
                  for(var item in CategoryData){
                    item.isSelected=false;
                  }
                  CategoryData[index].isSelected=true;
                  setState(() {

                  });
                },
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,

                      child: SvgPicture.asset(
                        CategoryData[index].vector,
                        fit: BoxFit.none,
                      ),

                      decoration: BoxDecoration(
                        shape: BoxShape.circle, //define shape
                        //define shadows in box
                        boxShadow: [
                          BoxShadow(
                            color: CategoryData[index].isSelected
                                ? Color(0xff51a8ff)
                                : Colors.white,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],

                        color: item.isSelected
                            ? const Color(0xff51a8ff)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 50),
          ),
        ),
      ],
    );
  }
}
