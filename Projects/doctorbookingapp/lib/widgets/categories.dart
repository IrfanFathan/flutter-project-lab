import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  get itemCount => null;

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
        ListView.separated(
          itemBuilder: (context,index){

          },
          separatorBuilder: (context,index)=>,
          itemCount: itemCount,
        ),
      ],
    );
  }
}
