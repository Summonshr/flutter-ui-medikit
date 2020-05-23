import 'package:flutter/material.dart';
import './pages/main-page.dart';
import './pages/list-page.dart';
import './pages/doctor-list.dart';
import './pages/doctor-page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meds UI",
      routes: {
        '/': (context) => MainPage(),
        '/second': (context) => ListPage(),
        '/third': (context) => DoctorList(),
        '/doctor': (context) => DoctorPage(),
      },
      initialRoute: '/',
    );
  }
}
