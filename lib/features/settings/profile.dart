import 'package:empapp/barrel.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/user.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Grace Spice",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text("Gracespice@gmail.com",
                        style: TextStyle(color: Colors.white)),
                    Text("Nairobi Kenya",
                        style: TextStyle(color: Colors.white)),
                  ],
                )
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
                            leading: Icon(Icons.edit),
                            title: Text(
                              'Edit Profile',
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
                            secondary: Icon(Icons.notifications_on),
                            title: Text(
                              'Push Notifications',
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
                              'Archievments',
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
                            leading: Icon(Icons.cyclone_rounded),
                            title: Text(
                              'App Usage',
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
                              'Change Password',
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
                              'FeedBack',
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
                            leading: Icon(Icons.delete),
                            title: Text(
                              'Delete Account',
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
                            leading: Icon(Icons.logout_outlined),
                            title: Text(
                              'log Out',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              // Handle contact
                            },
                          ),
                        ],
                      ),
                    ),
                  ])))
        ]));
  }
}
