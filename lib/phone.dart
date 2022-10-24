import 'package:flutter/material.dart';
import 'package:login_app/verify.dart';

class phone extends StatefulWidget {
  const phone({Key? key}) : super(key: key);

  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {

  var  _num =  TextEditingController();

  void navigate(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext ctx) => verify(num: _num.value.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                child: Text("Enter Your Phone Number",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ),
            Text(
                'Please Loging Before you procced \n         to track your Activty.',
                style: TextStyle(color: Colors.grey)),
            Padding(
              padding: EdgeInsets.all(0),
              child: SizedBox(
                child: TextField(
                  controller: _num,
                  decoration: InputDecoration(
                    labelText: "+252",
                      hintText: 'Enter your Number',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5)),

                      enabledBorder: OutlineInputBorder()),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(100),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  child: MaterialButton(
                    onPressed: () => navigate(context),
                    colorBrightness: Brightness.dark,
                    child: Text(
                      "Next",
                    ),
                    color: Colors.red,
                    shape: StadiumBorder(),
                    minWidth: 300,
                    height: 60,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
