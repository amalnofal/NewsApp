import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, required this.newsUrl});
  final String newsUrl;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageFinished: (url) => setState(() => _isLoading = false),
            ),
          )
          ..loadRequest(Uri.parse(widget.newsUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : WebViewWidget(controller: _controller),
    );
  }
}
