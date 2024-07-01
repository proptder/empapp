import 'package:empapp/barrel.dart';

class BarChat extends StatefulWidget {
  const BarChat({super.key});

  @override
  State<BarChat> createState() => _BarChatState();
}

class _BarChatState extends State<BarChat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallAppButtonLight(
                  onPressed: () {
                    // navigate to login page
                  },
                  buttonText: 'More History →',
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'This Week',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                SizedBox(
                  height: 220,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Bar(height: 160, label: 'Mon'),
                        Bar(height: 80, label: 'Tue'),
                        Bar(height: 160, label: 'Wed'),
                        Bar(height: 200, label: 'Thr'),
                        Bar(height: 110, label: 'Fri'),
                        Bar(height: 150, label: 'Sat'),
                        Bar(height: 180, label: 'Sun'),
                      ]),
                ),
                SizedBox(
                  height: 7,
                ),
              ],
            )
          ],
        ));
  }
}

class Bar extends StatelessWidget {
  // a height parameter can be added to the Bar class
  final double height;
  final String label;

  const Bar({
    required this.height,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: height,
            width: 12,
            decoration: BoxDecoration(
              color: mainCol,
              borderRadius: BorderRadius.circular(10),
            ),
            child: null),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
