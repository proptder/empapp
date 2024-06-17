import 'package:empapp/features/authentication/proto.dart';
import 'package:empapp/features/authentication/signup.dart';
import 'package:empapp/features/qrscanner.dart';
import 'package:flutter/material.dart';

class Setup extends StatelessWidget {
  const Setup({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) =>  Signup(),
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
                      '   Rest Password',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
            SizedBox(height: 80),
            Text(
              'Add Device',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Scan code or enter serial number found on the device.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            Row(
              children: [
                IconButton(
                  onPressed: () { 
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                        builder: (context) => const QRScannerPage(),
                        ),
                      );// Add your onPressed code here
                   },
                  icon: Icon(Icons.qr_code_scanner)),
                SizedBox(width: 10),
                Text(
                  'Scan Code',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Look for the code on the device, or its packaging and place the code in front of your phone\'s camera to scan it.',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              '--------------------------------- OR ---------------------------------',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Serial Number',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'ES 100123720012',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 220),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                        builder: (context) => const CarbonFootprintScreen(),
                        ),
                      ); // 
                },
                child: Container(
                  width: 270,
                  height: 51,
                  decoration: BoxDecoration(
                    color :const Color(0xFF0F0159),
                    borderRadius: BorderRadius.circular(14.0)
                  ),
                  child: const Center(child: Text('Connect with Serial', 
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold),
                    )
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}