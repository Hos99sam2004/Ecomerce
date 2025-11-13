import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecomerce/core/Router/app_routes.dart';
import 'package:ecomerce/core/services/prefs.dart';
import 'package:ecomerce/core/utils/app_colors.dart';
import 'package:ecomerce/core/utils/app_styles.dart';
import 'package:ecomerce/core/widgets/OnbordingPageViews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => OnbordingState();
}

class OnbordingState extends State<Onbording> {
  PageController pageController = PageController();
  int index = 0;
  bool islastpage = false;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int total = onboardingData.length;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          children: [
            Row(
              children: [
                Text("${index + 1}/$total"),
                Spacer(),
                TextButton(
                  onPressed: () {
                    pageController.jumpToPage(total - 1);
                    Future.delayed(
                      Duration(milliseconds: 500),
                    ).then((value) => context.push(AppRoutes.login));
                  },
                  child: Text("👉Skip", style: AppStyles.headline3),
                ),
              ],
            ),
            SizedBox(height: 0.1.sh),
            SizedBox(
              height: 450.h,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                    if (index + 1 == onboardingData.length) {
                      setState(() {
                        islastpage = true;
                      });
                    } else {
                      setState(() {
                        islastpage = false;
                      });
                    }
                  });
                },
                physics: BouncingScrollPhysics(),
                controller: pageController,
                itemCount: onboardingData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Onbo(
                    url: onboardingData[index]["image"].toString(),
                    text: onboardingData[index]["title"].toString(),
                  );
                },
              ),
            ),
            Spacer(),
            _Footer(total),
          ],
        ),
      ),
    );
  }

  Row _Footer(int total) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 10.w),
        DotsIndicator(
          dotsCount: total,
          position: index.toDouble(),
          animationDuration: Duration(seconds: 1),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(40.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),

        TextButton(
          child: Text(
            islastpage ? "GetStarted" : "Next",
            style: TextStyle(
              color: islastpage ? AppColors.red : AppColors.black,
              fontSize: islastpage
                  ? AppStyles.headline2.fontSize
                  : AppStyles.headline3.fontSize,
            ),
          ),
          onPressed: () async {
            if (islastpage) {
              await Prefs.setBool("showOnbording", true);
              print(
                "showOnbording ====================================== ${Prefs.getBool("showOnbording")}",
              );
              context.push(AppRoutes.login);
            } else {
              pageController.nextPage(
                duration: Duration(seconds: 1),
                curve: Curves.bounceIn,
              );
            }
          },
        ),
      ],
    );
  }
}
