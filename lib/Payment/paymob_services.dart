import 'package:dio/dio.dart';
import 'package:ecomerce/Payment/Constants.dart';

class PaymobServices {
  final Dio dio = Dio();

    getToken() async {
    try {
      final response = await dio.post(
        "https://accept.paymob.com/api/auth/tokens",
        data: {"api_key": Constants.api_key},
      );
      
      return response.data['token'];
    } catch (e) {
      print("get token not happen :: $e ");
      rethrow;
    }
  }

  Future<String> getPaymentLink(int amount) async {
  final token = await getToken(); // تأكد إنها String

  try {
  print("get token == $token");
  
  final response = await dio.post(
    "https://accept.paymob.com/api/ecommerce/payment-links",
    data: FormData.fromMap({
      "is_live": "false",
      "amount_cents": "${amount * 100}",
      "payment_methods": "5172473",
    }),
    options: Options(
      headers: {
        'Authorization': 'Bearer $token',
      },
    ),
  );
  
  print("response == ${response.data}");
  return response.data["shorten_url"];
} catch (e) {
  print("get payment_link not happen :: $e ");
      rethrow;
}
}



}
