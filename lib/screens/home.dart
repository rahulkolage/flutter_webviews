import 'package:flutter/material.dart';
import './web_view_container.dart';

class Home extends StatelessWidget {
  final _links = ['https://flutter.dev/'];

  Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _links.map((link) => _urlButton(context, link)).toList(),
        ),
      )),
    );
  }

  Widget _urlButton(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child:
            // FlatButton(
            //   color: Theme.of(context).primaryColor,
            //   padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
            //   child: Text(url),
            //   onPressed: () => _handleURLButtonPress(context, url),
            // )
            TextButton(
          onPressed: () => _handleURLButtonPress(context, url),
          child: Text(url),
          style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0)),
        ));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
