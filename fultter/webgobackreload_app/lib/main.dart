import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  bool isLoading = true; // 로딩중 중간에 뺑뻉이 도는 거
  String siteName = "www.google.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text('Floating Button WebView'),
        ),
        toolbarHeight: 50,
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://$siteName',
            javascriptMode: JavascriptMode.unrestricted, //제한없이 쓸수 있다.
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
            onPageStarted: (start) {
              setState(() {
                isLoading = true;
              });
            },
          ),
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(),
        ],
      ),
      floatingActionButton: FutureBuilder<WebViewController>(
          future: _controller.future,
          builder: (BuildContext context,
              AsyncSnapshot<WebViewController> controller) {
            if (controller.hasData) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () {
                        controller.data!.goBack();
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.yellow,
                      onPressed: () {
                        controller.data!.reload();
                      },
                      child: const Icon(Icons.replay,),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.blue,
                      onPressed: () {
                        controller.data!.goForward();
                      },
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              
              );
            }
            return Stack();
          }),
      
    );
  }

  //function
  _reloadSite() {
    _controller.future.then((value) => value.loadUrl('https://$siteName'));
  }
}//end
