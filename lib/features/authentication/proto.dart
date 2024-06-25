import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class EcoTraceScreen extends StatefulWidget {
  const EcoTraceScreen({super.key});

  @override
  _EcoTraceScreenState createState() => _EcoTraceScreenState();
}

class _EcoTraceScreenState extends State<EcoTraceScreen> {
  @override
  Widget build(BuildContext context) {
    final customWidth = CustomSliderWidths(
      trackWidth: 10,
      progressBarWidth: 13,
      shadowWidth: 20,
    );

    final customColors = CustomSliderColors(
      trackColor: Colors.grey,
      progressBarColors: [const Color.fromARGB(255, 179, 78, 78), Colors.cyan],
      shadowColor: Colors.black,
      shadowMaxOpacity: 0.2,
      shadowStep: 10,
    );

    final info = InfoProperties(
      topLabelText: 'CO₂',
      topLabelStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bottomLabelText: 'Today',
      bottomLabelStyle: const TextStyle(
        fontSize: 20,
        color: Colors.green,
      ),
    );

    final customAppearance = CircularSliderAppearance(
      customWidths: customWidth,
      customColors: customColors,
      infoProperties: info,
      startAngle: 270,
      angleRange: 360,
      size: 200,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoTraceScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SleekCircularSlider(
              appearance: customAppearance,
              initialValue: 30,
              min: 0,
              max: 100,
              onChange: (double value) {
                // Callback providing a value while it's being changed (with a pan gesture)
              },
              onChangeEnd: (double value) {
                // Callback providing a value when the user ends the change with a pan gesture
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Good Job!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
