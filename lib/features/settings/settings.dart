import 'package:empapp/barrel.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0159),
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Signup(),
                    ),
                  ); // Handle back action
                },
                child: const Text(
                  'Back',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            children: [
              Text(
                "Settings",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  padding: EdgeInsets.all(16.0),
                  children: [
                    ListTile(
                      leading: Icon(Icons.notifications_outlined),
                      title: Text(
                        'Notifications',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Handle notifications settings
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SwitchListTile(
                      secondary: Icon(Icons.dark_mode_outlined),
                      title: Text(
                        'Dark Mode',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      value:
                          false, // Replace with the current value from your app's state
                      onChanged: (bool value) {
                        // Handle dark mode toggle
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Icon(Icons.star_border),
                      title: Text(
                        'Rate App',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Handle app rating
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Icon(Icons.share_outlined),
                      title: Text(
                        'Share App',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Handle app sharing
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Icon(Icons.lock_outline),
                      title: Text(
                        'Privacy Policy',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Handle privacy policy
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Icon(Icons.description_outlined),
                      title: Text(
                        'Terms and Conditions',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Handle terms and conditions
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Icon(Icons.cookie_outlined),
                      title: Text(
                        'Cookies Policy',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Handle cookies policy
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Icon(Icons.mail_outline),
                      title: Text(
                        'Contact',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Handle contact
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
