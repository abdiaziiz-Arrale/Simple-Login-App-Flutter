import 'package:flutter/material.dart';
import 'package:login_app/phone.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  void navigate(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext ctx) => phone()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: SizedBox(
                height: 190,
                child: Image.asset('lib/assets/fitness.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                child: Text("Welcome To\n Our Fitness App",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ),
            Text(
                'Please Loging Before you procced \n         to track your Activty.',
                style: TextStyle(color: Colors.grey)),
            Padding(
              padding: EdgeInsets.all(50),
              child: SizedBox(
                child: MaterialButton(
                  onPressed: () => navigate(context),
                  child: Text("Loging Whith Phone"),
                  color: Colors.white,
                  shape: StadiumBorder(
                      side: BorderSide(width: 1, color: Colors.black)),
                  minWidth: 300,
                  height: 60,
                ),
              ),
            ),
            SizedBox(
              child: MaterialButton(
                onPressed: () {},
                colorBrightness: Brightness.dark,
                child: Text(
                  "loging Whith Google",
                ),
                color: Colors.red,
                shape: StadiumBorder(),
                minWidth: 300,
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
