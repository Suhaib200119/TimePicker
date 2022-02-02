import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String? time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Time Picker"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text(
                "ShowTimePicker",
              ),
                onPressed:(){
                showTimePicker(context: context,
                    initialTime: TimeOfDay.now()
                ).then((value) {
                  setState(() {
                    time=value!.format(context).toString();

                  });
                });
                }
                ),
            Text(
              "Time: ${time}"
            ),
          ],
        ),
      ),
    );
  }
}
