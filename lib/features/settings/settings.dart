import 'package:empapp/barrel.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set your desired color here
        ),
        title: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Emission Pulse',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ),
        backgroundColor: mainCol, // Setting the background color
      ),
      backgroundColor: const Color(0xFF0F0159),
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Row(
            children: [
              Text(
                "Settings",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.notifications_outlined),
                      title: const Text(
                        'Notifications',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      onTap: () {
                        // Navigate to notifications screen
                        Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Notifications()));

                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SwitchListTile(
                      secondary: const Icon(Icons.dark_mode_outlined),
                      title: const Text(
                        'Dark Mode',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      value:
                          false, // Replace with the current value from your app's state
                      onChanged: (bool value) {
                        // Handle dark mode toggle
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: const Icon(Icons.star_border),
                      title: const Text(
                        'Rate App',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      onTap: () {
                        // Handle app rating
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: const Icon(Icons.share_outlined),
                      title: const Text(
                        'Share App',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      onTap: () {
                        // Handle app sharing
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: const Icon(Icons.lock_outline),
                      title: const Text(
                        'Privacy Policy',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      onTap: () {
                        // Handle privacy policy
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: const Icon(Icons.description_outlined),
                      title: const Text(
                        'Terms and Conditions',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      onTap: () {
                        // Handle terms and conditions
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: const Icon(Icons.cookie_outlined),
                      title: const Text(
                        'Cookies Policy',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      onTap: () {
                        // Handle cookies policy
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: const Icon(Icons.mail_outline),
                      title: const Text(
                        'Contact',
                        style: TextStyle(fontWeight: FontWeight.normal),
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
