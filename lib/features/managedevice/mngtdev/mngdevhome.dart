import 'package:empapp/barrel.dart';

class MngDevHome extends StatefulWidget {
  const MngDevHome({super.key});

  @override
  State<MngDevHome> createState() => _MngDevHomeState();
}

class _MngDevHomeState extends State<MngDevHome> {
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
                'Devices',
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                  child: Wrap(
                alignment: WrapAlignment.center, children: [
                const SizedBox(
                  width: 300,
                  height: 20,
                ),
                const DeviceBoxSmall(),
                const DeviceBoxSmall(),
                const DeviceBoxSmall(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 170,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: appGrey),
                    child: IconButton(
                      icon: const Icon(Icons.add_circle_outlined),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddDeviceHome()),
                        );
                      },
                    ),
                  ),
                )
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
