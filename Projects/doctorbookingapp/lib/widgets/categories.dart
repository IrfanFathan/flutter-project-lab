import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16, left: 16),
          child: Text("Category", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
