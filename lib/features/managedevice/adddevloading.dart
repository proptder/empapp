import 'dart:async';

import 'package:empapp/common/widgets/buttons/button.dart';
import 'package:empapp/features/managedevice/adddevscan.dart';
import 'package:empapp/features/managedevice/addevhostmachine.dart';
import 'package:flutter/material.dart';

class SetupScreen extends StatefulWidget {
  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  double progress = 0.01;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        progress += 0.01;
        if (progress >= 1.0) {
          progress = 1.0;
          timer.cancel();
          _showConnectedPopup();
        }
      });
    });
  }

  void _showConnectedPopup() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Icon(Icons.check_circle, color: Colors.green, size: 50),
              SizedBox(height: 20),
              Text(
                'Carbon EX 500\nconnected.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Center(
                    child: AppButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const HostMachine(),
                        ),
                      );// navigate to login page
                      },
                      buttonText: 'Done',
                    ),
                  ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Scan(),
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
                  '    Setup',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const Spacer(flex: 2),
              ],
            ),
            SizedBox(height: 280),
            Text(
              '${(progress * 100).toStringAsFixed(0)}% Completed...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 112, 224, 0)),
            ),
            SizedBox(height: 20),
            Icon(Icons.nfc_outlined, size: 50),
            SizedBox(height: 10),
            Text(
              'Connecting via NFC',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Hold your phone near to the device, using NFC phone will automatically connect to the device.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
