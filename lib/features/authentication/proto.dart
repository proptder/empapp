import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class EcoTraceScreen extends StatefulWidget {
  @override
  _EcoTraceScreenState createState() => _EcoTraceScreenState();
}

class _EcoTraceScreenState extends State<EcoTraceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 0, 75),
        elevation: 0,
        title: Text(
          'Eco Trace',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // Handle settings button
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Grace!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'See your carbon footprint today!',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Center(
              child: CircularPercentIndicator(
                radius: 150.0,
                lineWidth: 15.0,
                percent: 0.3,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CO₂',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      '0.3kg',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      'Good Job!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                progressColor: Colors.green,
                backgroundColor: Colors.grey,
                circularStrokeCap: CircularStrokeCap.round,
                footer: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle view details button
                    },
                    child: Text('View Details'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 23, 0, 75),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  _buildGasLevelTile('CO₂ level', '400 ppm', 'captured 1m ago'),
                  _buildGasLevelTile('Gas 2', '23.5 Kg', 'captured 1m ago'),
                  _buildGasLevelTile('Gas 3', '30 Kg', 'captured 1m ago'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 23, 0, 75),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  ListTile _buildGasLevelTile(String title, String subtitle, String trailing) {
    return ListTile(
      leading: Icon(Icons.cloud, size: 40, color: Colors.black54),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: Text(trailing),
    );
  }
}
