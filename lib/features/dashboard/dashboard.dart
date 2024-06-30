import 'package:empapp/barrel.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // Handle navigation based on index
    setState(() {
      _selectedIndex = index;
    });

    // Example: Navigate to a different page based on index
    if (index == 2) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage()));
    }
  }

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
      backgroundColor: mainCol,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white, // Set your desired color here
          ),
          title: const Text(
            'Emission Pulse',
            style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w100,
                color: Colors.white),
          ),
          backgroundColor: mainCol, // Setting the background color
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                // Define the action when the settings icon is pressed
                // For example, navigate to a settings page
              },
            ),
          ],
        ),
      ),
      body: Container(
         decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Hello ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      Text(
                        'Grace',
                        style: TextStyle(
                            color: appGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/icons/user.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  'See your carbon footprint for today!',
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14.0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:40.0),
                    child: SmallAppButton(
                      onPressed: () {
                        // navigate to login page
                      },
                      buttonText: 'View Details',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 600)
            ],
          ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.device_hub),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: const Text('Settings Page'),
      ),
    );
  }
}