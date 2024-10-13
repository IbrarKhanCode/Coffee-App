import 'package:coffee_app/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>LoginScreen()
          )
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Image.asset(
              height: 600, width: 450, 'images/coffee.jpg', fit: BoxFit.cover),
          SizedBox(
            height: 80,
          ),
          Text(
            textAlign: TextAlign.center,
            'Welcome to Official \n App of Coffee',
            style: TextStyle(
                color: Colors.brown, fontSize: 33, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
