import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor_ai/core/constants/colors_contants.dart';
import 'package:tutor_ai/features/home/widgets/coin_balance.dart';
import 'package:tutor_ai/features/home/widgets/banner_title.dart';
import 'package:tutor_ai/features/home/widgets/feature_tile.dart';
import 'package:tutor_ai/features/home/widgets/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultFontSize = 25.sp;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.mainColor,
        title: Text.rich(
          TextSpan(
            text: 'Tutor',
            style: TextStyle(
              fontSize: 25.sp,
            ),
            children: [
              TextSpan(
                text: 'AI.',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xFFd1c1f6,
                  ),
                ),
              )
            ],
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(
            left: 10.w,
          ),
          child: SvgPicture.asset(
            'assets/home/drawer.svg',
            color: AppColor.whiteColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(
              8.w,
            ),
            child: BalanceCoins(),
          ),
        ],
      ),
      body: Container(
        color: AppColor.mainColor,
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello,',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 22.sp,
                    ),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            TitleWidget(
              titleText: 'Andrea Candiani!',
              titleSize: 22.sp,
            ),
            SizedBox(
              height: 20.h,
            ),
            const BannerTile(),
            SizedBox(
              height: 20.h,
            ),
            TitleWidget(
              titleText: 'Choose your category',
              titleSize: 20.sp,
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffe8e8e8),
                      Color(0xff9f88fa),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(
                    40.h,
                  ),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: const [
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Writing',
                      imageName: 'assets/home/writing.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Maths',
                      imageName: 'assets/home/maths.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Coding',
                      imageName: 'assets/home/coding.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Geography',
                      imageName: 'assets/home/geography.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Chemistry',
                      imageName: 'assets/home/chemistry.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Physics',
                      imageName: 'assets/home/physics.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Philosophy',
                      imageName: 'assets/home/philosophy.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Economy',
                      imageName: 'assets/home/economy.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Art',
                      imageName: 'assets/home/art.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'History',
                      imageName: 'assets/home/history.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Science/Biology',
                      imageName: 'assets/home/science.png',
                    ),
                    FeaturesTile(
                      imageColor: Colors.amber,
                      featureTitle: 'Law',
                      imageName: 'assets/home/law.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
