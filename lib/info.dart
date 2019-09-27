import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      OutlineButton(
                        child: Text("commerciale@start-franchising.it"),
                        onPressed: _launchEmail,
                        color: Colors.transparent,
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.8,
                          style: BorderStyle.solid
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      OutlineButton(
                        child: Text("www.start-franchising.it"),
                        onPressed: _launchBrowser,
                        color: Colors.transparent,
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.8,
                          style: BorderStyle.solid
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}

_launchBrowser() async {
  const url = "https://start-franchising.it/";

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch the url";
  }
}

_launchEmail() async {
  const url = "mailto:commerciale@start-franchising.it?subject=&body=";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch email app";
  }
}