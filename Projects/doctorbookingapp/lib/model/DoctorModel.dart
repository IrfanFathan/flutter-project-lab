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
    List<Doctormodel> Doctors = [];
    Doctors.add(
      Doctormodel(
        name: 'Dr. Anaya Verghese',
        image: 'assets/images/doctors/Dr. Anaya Verghese.png',
        imageBox: Color(0xffFFA340),
        score: 9.88,
        specialize: ['Cardiology, Internal Medicine, Preventive Care'],
      ),
    );

    Doctors.add(
      Doctormodel(
        name: 'Dr. Arjun Desai',
        image: 'assets/images/doctors/Dr. Arjun Desai.png',
        imageBox: Color(0xffFFA340),
        score: 7.89,
        specialize: ['Pediatrics, Child Care, Immunization'],
      ),
    );
  }
}
