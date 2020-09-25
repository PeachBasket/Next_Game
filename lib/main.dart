import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:linkable/linkable.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/JustCircleLogo.png'),
              ),
              Text('Voice of the Fan!',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  //color: Colors.teal.shade100,
                  thickness: 2,
                  color: Colors.black45,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  title: Text(
                    'Thank you for downloading and installing this widget. The "PeachBasket - Your Teams Next Game" widget is not an app, but a widget you can add to your homescreen. Please close this app and add our widget which should show up in the widget list. If you have any issues please feel free to reach out. We are PeachBasket, Voice of the Fan! ',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.public,
                    size: 25,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'https://www.Peach-Basket.net',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Linkable(
                    text:
                        "          You can find us here:\n          https://www.peach-basket.net         \n          or you can email us here:\n          Info@LAPeachBasket.com"),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

//children: <Widget>[
//child: Linkify(
//onOpen: _OnOpen,
//text: "Go here https://www.google.com: Google",
//)
//]
