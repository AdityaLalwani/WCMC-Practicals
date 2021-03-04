import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: WebView(
          initialUrl: 'https://www.google.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {},
        ),
      ),
    );
  }
}
