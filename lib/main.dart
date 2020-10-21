import 'package:flutter/material.dart';
import 'package:psu_club/screens/clubls_screen.dart';
import 'package:psu_club/screens/home_screen.dart';
import 'screens/bottomtab_screen.dart';
import './screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PSU CLUP',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        accentColor: Colors.white,
        backgroundColor: const Color(0xffe7e6e1),
      ),
      routes: {
        '/': (ctx) => SplashScreen(),
        BottomTabsScreen.routeName: (ctx) => BottomTabsScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ClubsScreen.routeName: (ctx) => ClubsScreen(),
      },
    );
  }
}
