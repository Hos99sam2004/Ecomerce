import 'package:ecomerce/core/utils/app_assets.dart';
import 'package:ecomerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List onboardingData = [
  {
    "image": AppAssets.onbording1,
    "title":
        "Choose the best products and continue to checkout\n Find your favorites and start shopping now!",
  },
  {
    "image": AppAssets.onbording2,
    "title":
        "Complete your purchase securely and quickly😊 . You're almost there! Just make your payment to complete the order😊",
  },
  {
    "image": AppAssets.onbording3,
    "title":
        "Your products are almost there — get ready to receive them!\n Excited? Your order is coming soon!🛍️🚚",
  },
];

class Onbo extends StatelessWidget {
  const Onbo({super.key, required this.url, required this.text});
  final String url;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.5.sh,
      child: Column(
        children: [
          Flexible(
            flex: 6,
            child: SizedBox(
              width:  300.w,
              height: 300.h,
              child: Image.asset(url, fit: BoxFit.cover),
            ),
          ),
          Flexible(
            flex: 4,
            child: Text(
              text,
              style: (AppStyles.text),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
