import 'package:empapp/barrel.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
      backgroundColor: appGreen,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white, // Set your desired color here
          ),
          title: const Text(
            'CO₂ : 0.4 g/km',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
          backgroundColor: appGreen, // Setting the background color
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/icons/smiley.png",
            ),
            const SizedBox(height: 10),
            const Text(
              'Good',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'You have done a great job with keeping your footprint low',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'See your carbon footprint for today!',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14.0),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const BarChat(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            'Test ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25.0),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                                color: appGreen,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Column(
                      children: [
                        GasBar(
                            gas: "CO₂",
                            time: "2 minutes ago",
                            weight: "23.5kg"),
                        SizedBox(height: 20),
                        GasBar(
                            gas: "NOx",
                            time: "2 minutes ago",
                            weight: "15.3kg"),
                        SizedBox(height: 20),
                        GasBar(
                            gas: "SO₂", time: "2 minutes ago", weight: "2.8kg"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            'Your ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25.0),
                          ),
                          Text(
                            'Statistics',
                            style: TextStyle(
                                color: appGreen,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Statistics()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
