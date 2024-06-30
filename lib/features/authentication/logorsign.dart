import 'package:empapp/features/authentication/login.dart';
import 'package:empapp/features/authentication/signup.dart';
import 'package:flutter/material.dart';

class LogorSign extends StatelessWidget {
  const LogorSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/img/logorsign.png'), // Path to your background image
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(193, 0, 0, 0),
                Color.fromARGB(150, 0, 0, 0)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(children: [
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(193, 0, 0, 0),
                      Color.fromARGB(150, 0, 0, 0)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 100,
              left: 90,
              child: Text(
                'emission pulse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 10,
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/hash.png',
                    height: 100,
                    width: 100,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Know Your',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Emissions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 57,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                child: Stack(
                  children: [
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 100.0,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const Login(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Log In',
                                    style: TextStyle(
                                      color: Color(0xFF0F0159),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const Signup(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Color(0xFF0F0159),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 20.0,
                              children: [
                                Text(
                                  '    Impact Africa',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text('Synergies',
                                    style: TextStyle(fontSize: 10)),
                                Text("Nersk Software's",
                                    style: TextStyle(fontSize: 10)),
                                Text('Tera IOT',
                                    style: TextStyle(fontSize: 10)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('GreenSky',
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
