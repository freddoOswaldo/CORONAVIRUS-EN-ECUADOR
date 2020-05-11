import 'package:covid19_model/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendationCard extends StatelessWidget {
  final String img;
  final String text;

  RecommendationCard({@required this.img,@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFe9e8fa)
            ),
            child: SvgPicture.asset(img,width: 50),
          ),
          SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style:GoogleFonts.poppins(color: primaryColor,fontSize: 12,fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}