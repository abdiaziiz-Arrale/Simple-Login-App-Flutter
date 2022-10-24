import 'package:flutter/material.dart';
class verify extends StatelessWidget {
  final num;
 verify({
   required this.num
});


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
              padding: EdgeInsets.symmetric(vertical: 10),
              child:   SizedBox(

                child: Text("Enter Your six Digit Number",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ),
            Text('Enter Your Six Digit Code we Sent in +252 $num',style: TextStyle(color: Colors.grey)),

            Padding(

              padding: EdgeInsets.all(20),
              child: SizedBox(

                child: TextField(

                  decoration: const InputDecoration(
                    hintText: "                   XXXXXX",
                      labelText: 'Enter Your 6 dIGITS',
                      border: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5)),
                ),


                ),
              ),
            ) ,
Spacer(),
            Padding(
              padding: EdgeInsets.all(100),
              child: Align(

                alignment: Alignment.bottomCenter,

                child: SizedBox(


                  child: MaterialButton(

                    onPressed: (){},
                    colorBrightness: Brightness.dark,
                    child: Text("Verify",),
                    color: Colors.red,
                    shape: StadiumBorder(),

                    minWidth: 300,
                    height:60,

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
