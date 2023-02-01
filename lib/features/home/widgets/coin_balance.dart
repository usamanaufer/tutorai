import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/colors_contants.dart';

class BalanceCoins extends StatelessWidget {
  const BalanceCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(
          40.0.h,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/home/coin.png',
            height: 100.h,
          ),
          Text(
            '100',
            style: TextStyle(
              color: AppColor.blackColor,
            ),
          ),
          SizedBox(
            width: 5.h,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple[400],
              borderRadius: BorderRadius.circular(
                20.0.h,
              ),
            ),
            child: Icon(
              Icons.add,
            ),
          ),
          SizedBox(
            width: 10.h,
          ),
        ],
      ),
    );
  }
}
