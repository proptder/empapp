import 'package:empapp/features/authentication/login_pge.dart';
import 'package:flutter/material.dart';

class StartPge extends StatelessWidget {
  const StartPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("img/logorsign.png", fit: BoxFit.cover),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
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
                            children: [
                              const SizedBox(
                                height: 100.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 125),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPge(),
                                    ),
                                  );
                                  },
                                  child: const Text(
                                  'Log In',
                                    style: TextStyle(
                                      color :Color(0xFF0F0159),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color :Color(0xFF0F0159),
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
                              Text('Synergies', style: TextStyle(fontSize: 10)),
                              Text("Nersk Software's",
                                  style: TextStyle(fontSize: 10)),
                              Text('Tera IOT', style: TextStyle(fontSize: 10)),
                              SizedBox(
                                width: 20,
                              ),
                              Text('GreenSky', style: TextStyle(fontSize: 10)),
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
        ]));
  }
}
