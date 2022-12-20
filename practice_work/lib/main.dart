import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practice_work/core/network/http_override.dart';
import 'package:practice_work/core/ui/appBar.dart';
import 'package:practice_work/injectable.dart';
import 'package:practice_work/navigation/router.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  configureDependencies();
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}

class WebViewPage extends StatefulWidget {
  const WebViewPage({
    Key? key,
  }) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    var uri = 'https://kueski.shop/cq1al3k.php?key=9ckcsrbnkseenkjkuh04';
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: MainAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: uri,
              navigationDelegate: (request) {
                if (request.url.startsWith('https://www.thesportsdb.com/')) {
                  return NavigationDecision.navigate;
                } else {
                  AutoRouter.of(context).push(HomeRouter());
                  return NavigationDecision.prevent;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
