import 'package:empapp/common/widgets/buttons/button.dart';
import 'package:empapp/features/authentication/proto.dart';
import 'package:empapp/features/managedevice/adddevscan.dart';
import 'package:flutter/material.dart';

class HostMachine extends StatelessWidget {
  const HostMachine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: 
      Padding(
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
                '  Host Machine',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const Spacer(flex: 2),
            ],
          ),
          const SizedBox(height: 120,),
          const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      'Search',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'type here...',hintStyle: TextStyle(fontSize: 16 , color: Colors.grey),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text("     Select Machine"),
                  const SizedBox(height: 20),
                  Center(
                    child: 
                    GestureDetector(
                      onTap: () {
                        // Handle log in navigation
                      },
                      child: Container(
                        width: 320.0,
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
                                'Select from list',
                                style: TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(Icons.arrow_drop_down),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("     Select type"),
                  const SizedBox(height: 20),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                         // Handle log in navigation
                      },
                      child: Container(
                        width: 320.0,
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
                                'Select from list',
                                style: TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(Icons.arrow_drop_down),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 120),
                Center(
                  child: AppButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const EcoTraceScreen(),
                        ),
                      );// navigate to login page
                    },
                    buttonText: 'Confirm',
                  ),
                ),
          ]
        ),
      ),
    );
  }
}