import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecomerce/core/utils/app_colors.dart';
import 'package:ecomerce/core/utils/app_styles.dart';
import 'package:ecomerce/core/widgets/OnbordingPageViews.dart';
import 'package:flutter/material.dart';

class Onbording1screen extends StatefulWidget {
  const Onbording1screen({super.key});

  @override
  State<Onbording1screen> createState() => _Onbording1screenState();
}

class _Onbording1screenState extends State<Onbording1screen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Text("${index + 1}/3"),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text("Skip", style: AppStyles.headline),
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              height: 450,
              child: PageView(
                children: [Onbording1(), Onbording2(), Onbording3()],
                onPageChanged: (value) {
                  setState(() {
                    print("Val:: $value");
                    index = value;
                    print("$index");
                  });
                },
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: Text("Prev")),
                DotsIndicator(
                  dotsCount: 3,
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
                index == 3
                    ? TextButton(
                        child: Text(
                          "GetStarted",
                          style: TextStyle(color: AppColors.red, fontSize: 22),
                        ),
                        onPressed: () {},
                      )
                    : TextButton(
                        child: Text(
                          "Next",
                          style: TextStyle(color: AppColors.red, fontSize: 22),
                        ),
                        onPressed: () {},
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
