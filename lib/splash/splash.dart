import 'package:empapp/barrel.dart';
// ignore: depend_on_referenced_packages

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
              "assets/img/splash.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(75, 0, 0, 0), Color.fromARGB(150, 0, 0, 0)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          const Positioned(
              left: 40, top: 310, child: Text("emission pulse", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white))),
        ],
      ),
    );
  }
}
