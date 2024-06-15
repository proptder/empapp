import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';



class CarbonFootprintScreen extends StatefulWidget {
  const CarbonFootprintScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CarbonFootprintScreenState createState() => _CarbonFootprintScreenState();
}

class _CarbonFootprintScreenState extends State<CarbonFootprintScreen> {
  double _carbonFootprint = 0.3; // initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carbon Footprint Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('See your carbon footprint today !'),
            SizedBox(height: 20),
            CircularPercentIndicator(
              radius: 150.0,
              lineWidth: 15.0,
              animation: true,
              percent: _carbonFootprint / 10.0, // assuming the scale is 0-10kg
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CO\u2082',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${_carbonFootprint.toStringAsFixed(1)} kg',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.blueAccent,
              backgroundColor: Colors.redAccent,
              
            ),
            SizedBox(height: 20),
            Text(
              'Good job!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Simulate a data update
            _carbonFootprint = (_carbonFootprint + 0.1) % 10;
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
