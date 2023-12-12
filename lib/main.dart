import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: First(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("Mail"),
                  onPressed: () {
                    String? encodeQueryParameters(Map<String, String> params) {
                      return params.entries
                          .map((MapEntry<String, String> e) =>
                      '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                          .join('&');
                    }
// ···
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'kaushik1510patel@gmail.com',
                      query: encodeQueryParameters(<String, String>{
                        'subject': 'hyy',
                      }),
                    );

                    launchUrl(emailLaunchUri);

                    //navigate to Second screen

                  }
              ),
              ElevatedButton(
                  child: Text("sms"),
                  onPressed: () {
                    String? encodeQueryParameters(Map<String, String> params) {
                      return params.entries
                          .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                          .join('&');
                    }

                   final Uri smsUri = Uri(
                      scheme: 'sms',
                      path: '8691966433',
                      query: encodeQueryParameters(<String, String>{
                        'body':
                        'Hey'
                      }),
                    );

                    launchUrl(smsUri);
                  }
              ),
              ElevatedButton(
                  child: Text("call"),
                  onPressed: () {
                    String? encodeQueryParameters(Map<String, String> params) {
                      return params.entries
                          .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                          .join('&');
                    }

                    final Uri smsUri = Uri(
                      scheme: 'tel',
                      path: '8691966433',
                      query: encodeQueryParameters(<String, String>{
                        'body':
                        'Hey'
                      }),
                    );

                    launchUrl(smsUri);
                  }
              ),

            ],

          ),
        ),
      );

  }
}

