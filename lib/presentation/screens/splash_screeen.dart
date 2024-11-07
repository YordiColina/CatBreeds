import 'package:flutter/material.dart';

import 'landing_screen.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({super.key});

  @override
  State<SplashScreeen> createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
  @override
  void initState() {
      super.initState();
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LandingScreen()),
        );
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: 1.0,
            duration: const Duration(seconds: 1),
            child: Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.10),
              child: const Text(
                'CatBreeds',
                style: TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Autumn'
                ),
              ),
            ),
          ),
          // Animación de imagen de gatito
          Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.20),
            child: Center(
              child: AnimatedOpacity(
                opacity: 1.0,
                duration: const Duration(seconds: 1),
                child: Image.asset('assets/images/gatito.jpg', width: 200),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Animación de texto

        ],
      ),
    );
  }
}
