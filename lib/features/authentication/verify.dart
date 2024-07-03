import 'package:empapp/barrel.dart';

class VerifyPge extends StatelessWidget {
  const VerifyPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: 
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                        builder: (context) => const RecoverPass(),
                        ),
                      ); // Handle back action
                      },
                      child: const Text(
                        'Back',
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
                  ),
                  const Spacer(),
                const Text(
                  '    Recover Password',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const Spacer(flex: 2), 
                ],
              ),
              const SizedBox(height: 200),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Code',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '  Enter Code',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
           const SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  const Text("Didn't recieve a code ?"),
                  const SizedBox(width: 10.0,),
                  GestureDetector(
                    onTap: () {
                      // 
                    },
                    child: const Text("Resend", style: TextStyle(fontWeight: FontWeight.bold),))
                ],
              ),
            ),
            const SizedBox(height: 200),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                        builder: (context) => const Reset(),
                        ),
                      ); // 
                },
                child: Container(
                  width: 270,
                  height: 51,
                  decoration: BoxDecoration(
                    color :const Color(0xFF0F0159),
                    borderRadius: BorderRadius.circular(14.0)
                  ),
                  child: const Center(child: Text('Confirm', 
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold),
                    )
                  )
                ),
              ),
            ),
          ]
        ),
      )
    );
  }
}