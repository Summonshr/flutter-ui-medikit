import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('./images/2.png'),
              height: 220.0,
            ),
            Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("Welcome to Med!",
                    style: TextStyle(color: Colors.white, fontSize: 18.0))),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Text(
                'We are happy to help you cure any diseases, taking full care of diagnostic, treatment and recovery process.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              child: Text(
                'Continue',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0),
              ),
            )
          ],
        ));
  }
}
