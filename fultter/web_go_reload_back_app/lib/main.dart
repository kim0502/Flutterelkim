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
        backgroundColor: Colors.amber ,
        title: Center(
          child: Column(
            children: [
              const Text('Floating Button WebView'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: ElevatedButton(
                       style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Colors.red),
                       ),
                onPressed:(){
                  setState(() {
                      siteName = 'www.google.com';
                  });
                  _reloadSite();
                }, 
                child: const Text('google')),
                   ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Colors.green),
                       ),
                  onPressed:(){
                    setState(() {
                      siteName = 'www.naver.com';
                    });
                    _reloadSite();
                  }, 
                  child: const Text('naver')),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Colors.yellow),
                       ),
                  onPressed:(){
                    setState(() {
                      siteName = 'www.daum.net';
                    });
                    _reloadSite();
                  }, 
                  child: const Text('daum')),
                )
                ],
              )
            ],
          ),
        ) ,
        toolbarHeight: 100,
        //const Text('WebView'),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://$siteName',
            javascriptMode: JavascriptMode.unrestricted,  //제한없이 쓸수 있다.
          onWebViewCreated: (WebViewController webViewController){
            _controller.complete(webViewController);
          },
          onPageFinished: (finish){
            setState(() {
              isLoading = false;
            });
          },
          onPageStarted: (start){
            setState(() {
              isLoading = true;
            });
          },
          ),
          isLoading ? const Center(
            child: CircularProgressIndicator(),
          )
          : Stack(),
        ],
      ) ,
      floatingActionButton: FutureBuilder<WebViewController>(
        future: _controller.future,
        builder: (BuildContext context,AsyncSnapshot<WebViewController> controller){
          if(controller.hasData){
            return FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: (){
                controller.data!.goBack();
              },
              child: const Icon(Icons.arrow_back),
              
             );
          }
          return Stack();
        }),
      
    );
  }
  //function
  _reloadSite(){
    _controller.future.then((value) => value.loadUrl('https://$siteName'));
  }
}//end
