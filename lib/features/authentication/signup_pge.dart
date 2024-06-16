import 'package:empapp/features/authentication/logorsign.dart';
import 'package:empapp/features/authentication/proto.dart';
import 'package:flutter/material.dart';


class SignupPge extends StatelessWidget {
  const SignupPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
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
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),
                ),
                Spacer(),
              Text(
                '     SignUp',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 2), 
              ],
            ),
            SizedBox(height: 190),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Name',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Email',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Active Email Address',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Number/Phone',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Set Up Device',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle log in navigation 
                },
                child: Container(
                  width: 350.0,
                  height: 51,
                  decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )]
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Add Device"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 235),
                        child: 
                        Icon(Icons.add),
                    )
                    ],
                      ),
                ),
              ),
            ),
            SizedBox(height: 140),
            Center(
              child: Container(
                
                width: 270,
                height: 51,
                decoration: BoxDecoration(
                  color :Color(0xFF0F0159),
                  borderRadius: BorderRadius.circular(14.0)
                ),              
                child: Center(
                  child: 
                  Text('Sigin Up', 
                  style: 
                  TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold),
                    )
                  )
                ),
            ),
            Spacer(),
            Center(
              child: Text(
                'Have an Account ?',
                style: TextStyle(fontSize: 16,),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: GestureDetector(
                  onTap: () {
                   Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                      builder: (context) => const CarbonFootprintScreen(),
                      ),
                    ); // Handle sign up navigation
                  },
                  child: Text(
                    'Login ?',
                    style: TextStyle(fontSize: 26, color: Color(0xFF0F0159)),
                  ),
                ),
            ),
          ],
        )
        )
    );
  }
}
    