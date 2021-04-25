import 'package:flutter/material.dart';
import 'package:flutter_intermediate_week1/views/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String email = "";

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      email = preferences.getString("email");
    });
  }

  logOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('value');
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF56CBF9),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Week 1 Flutter Intermediate",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                child: Card(
                  elevation: 3,
                  child: Container(
                    color: Color(0xFFFF729F),
                    height: size.height * 0.3,
                    width: size.width * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.ondemand_video_rounded,
                          size: 100,
                          color: Color(0xFF81F4E1),
                        ),
                        Text(
                          "Learning How to Learn\nWith Hutata",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPlayer(
                        title: "Learning How To Learn",
                        url: Uri.parse("https://myhutataapi.herokuapp.com/"),
                        email: email,
                      ),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Card(
                  elevation: 3,
                  child: Container(
                    color: Color(0xFFFF729F),
                    height: size.height * 0.3,
                    width: size.width * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.live_tv,
                          color: Color(0xFF81F4E1),
                          size: 100,
                        ),
                        Text(
                          "Aplikasi Movie\ndengan Database MySql",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Grafik()));
                },
              ),
              TextButton(
                onPressed: () {
                  logOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFFFF729F),
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
