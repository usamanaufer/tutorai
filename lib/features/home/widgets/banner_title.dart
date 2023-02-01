import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerTile extends StatelessWidget {
  const BannerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
      ),
      child: Container(
        padding: EdgeInsets.all(
          15.h,
        ),
        decoration: BoxDecoration(
          color: Colors.deepPurple[500],
          borderRadius: BorderRadius.circular(
            25.h,
          ),
        ),
        child: Row(
          children: [
            Text(
              'Solve any kind of\nquestion with\ntokens',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(
              'assets/home/Frame.png',
              width: 160.h,
              height: 120.h,
            ),
          ],
        ),
      ),
    );
  }
}
