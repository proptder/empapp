import 'package:empapp/barrel.dart';

class DeviceBox extends StatefulWidget {
  const DeviceBox({super.key});

  @override
  State<DeviceBox> createState() => DeviceBoxState();
}

class DeviceBoxState extends State<DeviceBox> {
  bool _isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: appGrey),
        width: double.infinity,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Switch(
                activeColor: Colors.green, 
                activeTrackColor: Colors.greenAccent, 
                inactiveThumbColor: Colors.black45, 
                inactiveTrackColor: Colors.white, 
                    value: _isSwitched,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                'Carbon EX 500',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    'Active',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Mercedes Benz',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



