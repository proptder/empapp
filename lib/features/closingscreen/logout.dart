import 'package:empapp/barrel.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "assets/img/Logout.png",
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(75, 0, 0, 0), Color.fromARGB(150, 0, 0, 0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
              Positioned(
                top: 20.0,
                child: Text(
                  """
              Remember
              Tracking our emissions is a 
              must!
              """,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: 50,
                left: 60,
                child: Container(
                  height: 51,
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Confirm Logout",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ]));
  }
}
