import 'package:empapp/barrel.dart';

class GasBar extends StatefulWidget {
  final String gas;
  final String time;
  final String weight;

  const GasBar(
      {required this.gas, required this.time, required this.weight, super.key});

  @override
  State<GasBar> createState() => _GasBarState();
}

class _GasBarState extends State<GasBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            width: 50,
            height: 50,
            child: const Iconify(Iwwa.co2),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: appGrey, width: 1)),
            ),
            width: 260,
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.gas,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.time,
                      style: TextStyle(
                        color: textGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.weight,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
