
import 'package:ecomerce/core/utils/app_assets.dart';
import 'package:ecomerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' show Image;

class Onbording1 extends StatelessWidget {
  const Onbording1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.onbording1),
        Text(
          "Choose the best products and continue to checkout\n Find your favorites and start shopping now!",
          style: AppStyles.text,
        ),
      ],
    );
  }
}

class Onbording2 extends StatelessWidget {
  const Onbording2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.onbording2),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Complete your purchase securely and quickly😊 . You're almost there! Just make your payment to complete the order😊",
            style: AppStyles.text,
          ),
        ),
      ],
    );
  }
}

class Onbording3 extends StatelessWidget {
  const Onbording3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.onbording3),
        Text(
          "Your products are almost there — get ready to receive them!\n Excited? Your order is coming soon!🛍️🚚",
          style: AppStyles.text,
        ),
      ],
    );
  }
}

/* 
 Column(
            children: [
              Image.asset(AppAssets.onbording1),
              Text("Choose the best products and continue to checkout\n Find your favorites and start shopping now!",style: AppStyles.text,),
            ],
          ),
          Spacer(),
 */
