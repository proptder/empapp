import 'package:empapp/barrel.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
          backgroundColor: mainCol, // Setting the background color
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding:  EdgeInsets.only(left:20.0),
              child: Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: const SingleChildScrollView(
                  child: Column(
                children: [
                  NotifBar(
                      heading: 'Device Disconnected',
                      subheading: 'You have succesfully disconnected from the device',
                      icon: Icons.mark_chat_read,
                      btnType: 'danger',
                  ),
                  NotifBar(
                      heading: 'Device Connected',
                      subheading: 'You have succesfully connected to the device',
                      icon: Icons.check_circle,
                      btnType: 'success',
                  ),
                ]
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
