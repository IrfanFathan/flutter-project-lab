import 'package:flutter/material.dart';

class Doctormodel {
  String name;
  String image;
  Color imageBox;
  List<String> specialize;
  double score;

  Doctormodel({
    required this.name,
    required this.image,
    required this.imageBox,
    required this.score,
    required this.specialize,
  });

  static List<Doctormodel> getDoctores() {
    List <Doctormodel> Doctors=[];
    Doctors.add(
      Doctormodel(name: 'Dr. Anaya Verghese', image: image, imageBox: imageBox, score: score, specialize: specialize)
    )
  }
}
