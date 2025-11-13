import 'package:ecomerce/Payment/paymob_links.dart';
import 'package:ecomerce/Payment/paymob_services.dart';
import 'package:ecomerce/core/utils/app_colors.dart';
import 'package:ecomerce/core/utils/show_snack_bar_funnction.dart';
import 'package:flutter/material.dart';

class PayMobNotquick extends StatefulWidget {
  const PayMobNotquick({super.key});

  @override
  State<PayMobNotquick> createState() => _PayMobNotquickState();
}

class _PayMobNotquickState extends State<PayMobNotquick> {
  String token = '';
  String paymentLink = '';
  TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              onSubmitted: (value) async {
                token = await PaymobServices().getToken();
                debugPrint("token in paymob Screen == $token");
                paymentLink = await PaymobServices().getPaymentLink(
                  int.parse(value),
                );
                debugPrint(paymentLink);
                // // Navigator.of(context).push(
                // //   MaterialPageRoute(
                // //     builder: (context) => PaymentLinkPage(url: paymentLink),
                // //   ),
                // // );
                if (paymentLink.isNotEmpty) {
                  debugPrint(paymentLink);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PaymentLinkPage(url: paymentLink),
                    ),
                  );
                } else {
                  debugPrint('payment link is empty');
                  showSnackBarFuction(context, "payment link is empty");
                }
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the amount you want to pay',
                prefixIcon: Icon(Icons.attach_money),
                filled: true,
                fillColor: Color.fromARGB(255, 119, 162, 121),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.bluegrey),
                ),
                enabled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.bluegrey),
                ),
                labelStyle: TextStyle(color: Colors.redAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
