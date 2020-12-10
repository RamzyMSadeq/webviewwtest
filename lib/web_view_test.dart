import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewTest extends StatefulWidget {
  @override
  _WebViewTestState createState() => _WebViewTestState();
}

class _WebViewTestState extends State<WebViewTest> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  Future<String> loadJS(String name) async {
    flutterWebviewPlugin.onStateChanged.listen((viewState) async {
      if (viewState.type == WebViewState.finishLoad) {
        flutterWebviewPlugin.evalJavascript(name);
      }
    });
  }

   @override
  void initState(){
    super.initState();
    flutterWebviewPlugin.evalJavascript(
     "alert('Hi, I wesam Salama')"
      );
  }

  @override
  void dispose() {
    flutterWebviewPlugin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://www.cvonline.co.uk/',
      appBar: new AppBar(
        title: const Text('Widget webview'),
      ),
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: Colors.redAccent,
        child: const Center(
          child: Text('Waiting.....'),
        ),
      ),
    );
  }
}
