import 'package:doctorbookingapp/widgets/categories.dart';
import 'package:doctorbookingapp/widgets/homeWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [header(), Category()]),
      ),
    );
  }
}
