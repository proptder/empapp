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
    if (index == 1) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage()));
    }
  }

  @override
  Widget build(BuildContext context) {

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
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mainCol,
        onTap: _onItemTapped,
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