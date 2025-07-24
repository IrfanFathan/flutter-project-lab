import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff5148FF),
      padding: EdgeInsets.all(16),
      height: 350,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hi Edi',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Container(
                width: 50,
                height: 50,

                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.asset(
                  "assets/vectors/notification.svg",
                  color: Colors.white,
                  width: 25,
                  height: 25,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "Let's find \nyour top doctor.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.black, size: 25),
              hintText: "Search here...",
              hintStyle: TextStyle(fontWeight: FontWeight.w300),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
