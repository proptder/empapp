import 'package:empapp/features/authentication/logorsign.dart';
import 'package:empapp/features/authentication/login.dart';
import 'package:empapp/features/authentication/proto.dart';
import 'package:empapp/common/widgets/buttons/button.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const StartPge(),
                            ),
                          ); // Handle back action
                        },
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      '     SignUp',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
                const SizedBox(height: 190),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Active Email Address',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Number/Phone',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Set Up Device',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // Handle log in navigation
                    },
                    child: Container(
                      width: 350.0,
                      height: 51,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ]),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'Add Device',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 190),
                            child: Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Center(
                  child: AppButton(
                    onPressed: () {
                      // navigate to login page
                    },
                    buttonText: 'Sign Up',
                  ),
                ),
                const Spacer(),
                const Center(
                  child: Text(
                    'Have an Account ?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const CarbonFootprintScreen(),
                        ),
                      ); // Handle sign up navigation
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(fontSize: 26, color: Color(0xFF0F0159)),
                    ),
                  ),
                ),
              ],
            )));
  }
}
