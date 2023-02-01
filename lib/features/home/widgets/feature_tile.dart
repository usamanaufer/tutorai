import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor_ai/core/constants/colors_contants.dart';

class FeaturesTile extends StatelessWidget {
  final String featureTitle;
  final String imageName;
  final imageColor;

  const FeaturesTile({
    super.key,
    required this.imageColor,
    required this.featureTitle,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 15.h,
        top: 15.h,
        bottom: 15.h,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.h,
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageName,
            ),
            Text(
              featureTitle,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: AppColor.blackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
