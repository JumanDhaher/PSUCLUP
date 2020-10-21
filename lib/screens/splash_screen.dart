import 'package:flutter/material.dart';
import 'package:simple_splashscreen/simple_splashscreen.dart';
import '../widget/splash_widget.dart';
import '../screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Simple_splashscreen(
      context: context,
      gotoWidget: MainScreen(),
      splashscreenWidget: SplashScreenWidget(),
      timerInSeconds: 3,
    );
  }
}