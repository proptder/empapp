import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPge extends StatelessWidget {
  const SplashPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "img/splash.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(75, 0, 0, 0),
                  Color.fromARGB(150, 0, 0, 0)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            left: 89,
            top: 310,
            child: Text("eco trace", 
          style: GoogleFonts.righteous(
            fontSize: 63.0, 
            fontWeight: FontWeight.bold , 
            color: Colors.white)
             )
            ),
        ],
      ),
    );
  }
}
