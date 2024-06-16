import 'package:flutter/material.dart';

class SignupPge extends StatelessWidget {
  const SignupPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      // Handle back action
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),
                ),
                Spacer(),
              Text(
                '     Login',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 2), 
              ],
            ),
            SizedBox(height: 200),
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
                  hintText: '   Username/Phone/Email',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Password',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '   Active Email Address',
                  border: UnderlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: GestureDetector(
                onTap: () {
                     // Handle back action
                    },
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                
                width: 270,
                height: 51,
                decoration: BoxDecoration(
                  color :Color(0xFF0F0159),
                  borderRadius: BorderRadius.circular(14.0)
                ),
                
                child: Center(child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))),
            ),
            Spacer(),
            Center(
              child: Text(
                '-sign in with-',
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('img/google_icon.png'), 
                  onPressed: () {
                    // Handle Google sign-in
                  },
                ),
                IconButton(
                  icon: Image.asset('img/facebook_icon.png'),
                  onPressed: () {
                    // Handle Facebook sign-in
                  },
                ),
                IconButton(
                  icon: Image.asset('img/X_icon.png'),
                  onPressed: () {
                    // Handle Twitter sign-in
                  },
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                'Dont have an Account ?',
                style: TextStyle(fontSize: 16,),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: GestureDetector(
                  onTap: () {
                    // Handle sign up navigation
                  },
                  child: Text(
                    'Sign Up ?',
                    style: TextStyle(fontSize: 26, color: Color(0xFF0F0159)),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}