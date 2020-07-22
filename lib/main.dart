import 'package:flutter/material.dart';
import './screens/homeScreen.dart';
import './screens/destinationScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (ctx) => HomeScreen(),
        DestinationScreen.routeName: (ctx) => DestinationScreen()
      },
    );
  }
}
