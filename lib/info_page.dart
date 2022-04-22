import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class InfoPage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Disclaimer!!!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
              Text(
                "Video Materi yang saya gunakan merupakan embed dari youtube, tidak ada maksud lain dari penggunaan video tersebut selain untuk kebutuhan Pembelajaran.",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Terimakasih :)",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Text(
                  'OK,,, Lanjut...',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}