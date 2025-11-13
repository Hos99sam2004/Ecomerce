// payment_link_page.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentLinkPage extends StatefulWidget {
  final String url;
  const PaymentLinkPage({super.key, required this.url});

  @override
  State<PaymentLinkPage> createState() => _PaymentLinkPageState();
}

class _PaymentLinkPageState extends State<PaymentLinkPage> {
  late final WebViewController _controller;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            debugPrint('nav started: $url');
            _handleUrl(url);
          },
          onPageFinished: (url) {
            setState(() => _loading = false);
          },
        ),
      );
    _controller.loadRequest(Uri.parse(widget.url));
  }

  void _handleUrl(String url) {
    // افحص الـ redirect URL أو باراميترات النجاح (حسب اللي حطيت في Paymob)
    if (url.contains('success') || url.contains('status=paid')) {
      Navigator.of(context).pop({'status': 'success', 'url': url});
    } else if (url.contains('failed') || url.contains('status=failed')) {
      Navigator.of(context).pop({'status': 'failed', 'url': url});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: _loading
            ? const Center(child: CircularProgressIndicator())
            : WebViewWidget(controller: _controller),
      ),
    );
  }
}
