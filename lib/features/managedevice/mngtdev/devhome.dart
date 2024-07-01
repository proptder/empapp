import 'package:empapp/barrel.dart';

class DevicesHome extends StatefulWidget {
  const DevicesHome({super.key});

  @override
  State<DevicesHome> createState() => _DevicesHomeState();
}

class _DevicesHomeState extends State<DevicesHome> {
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
          Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Devices",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
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
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Wrap(alignment: WrapAlignment.center, children: [
                        const DeviceBoxSmall(),
                        const DeviceBoxSmall(),
                        const DeviceBoxSmall(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 170,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: appGrey),
                            child: IconButton(
                              icon: const Icon(Icons.add_circle_outlined),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddDeviceHome()),
                                );
                              },
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              )
            ]),
          ))
        ]));
  }
}
