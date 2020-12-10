// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebViewExample extends StatefulWidget {
//   @override
//   _WebViewExampleState createState() => _WebViewExampleState();
// }

// class _WebViewExampleState extends State<WebViewExample> {
//   WebViewController _controller;

//   @override
//   Widget build(BuildContext context) {
//     final topPadding = MediaQuery.of(context).padding.top;
//     var button = MediaQuery.of(context).padding.bottom;
//     var height = MediaQuery.of(context).size.height - topPadding - button;
//     var width = MediaQuery.of(context).size.width;

// //     SystemChrome.setSystemUIOverlayStyle(
// //        SystemUiOverlayStyle(
// //   statusBarColor: Colors.white10  ,

// //    //or set color with: Color(0xFF0000FF)
// // )
// // );

//     return Scaffold(
//       body: Builder(builder: (context) {
//         return Container(
//             height: double.infinity,
//             width: double.infinity,
//             child: WebView(
//               initialUrl: 'https://www.cvonline.co.uk/',
//               javascriptMode: JavascriptMode.unrestricted,
//               onWebViewCreated: (WebViewController webViewController) {
//                 _controller = webViewController;
//                  _controller.evaluateJavascript("alert('Hi, I just executed')");
//                 _controller.evaluateJavascript(
//                     "document.getElementById('51').style.display = 'none';"); 
//               },
              
//               //  onPageStarted: (url) async {
//               //    if (url.contains("tel")) {
//               //       _controller.goBack();
// //
//               //       await call(url.substring(4));
//               //       //implement for condition
//               //     }
//               //  },
//             ));
//       }),
//     );
//   }
// }
