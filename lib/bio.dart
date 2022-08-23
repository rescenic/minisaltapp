// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'dart:async';
//import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // final Completer<WebViewController> _controller =
  //     Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFC62828),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Biodata Saya',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 10,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Image.asset(
                    'assets/rescenic-box.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Newbie Developer',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Nama Lengkap: Muhammad Ridwan Hakim, S.T.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
              ),
              Linkify(
                onOpen: (link) {
                  print("LinkedIn: ${link.url}");
                },
                text: 'LinkedIn: https://linkedin.com/in/muhridwanhakim/',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              Linkify(
                onOpen: (link) {
                  print("GitHub: ${link.url}");
                },
                text: 'GitHub: https://github.com/rescenic',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  child: Text("Visit My Site"),
                ),
              )
              // Padding(
              //   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              //   child: WebView(
              //       initialUrl: 'https://github.com/rescenic',
              //       onWebViewCreated: (WebViewController webViewController) {
              //         _controller.complete(webViewController);
              //       },
              //       javascriptMode: JavascriptMode.unrestricted),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
