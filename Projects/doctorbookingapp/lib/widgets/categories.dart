import 'package:doctorbookingapp/model/categoryModel.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key});

  final List<CategoryModel> CategoryData = getCategory();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16, left: 16),
          child: Text(
            "Category",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: CategoryData.length,
            itemBuilder: (context, index) {
              final item = CategoryData[index];
              return Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: item.isSelected ? const Color(0xff51a8ff) : Colors.white,
                    ),
                    child: Icon(item.icon, color: item.isSelected ? Colors.white : Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(item.name, style: const TextStyle(fontSize: 12)),
                ],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ),
      ],
    );
  }
}
