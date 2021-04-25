import 'package:flutter/material.dart';
import 'package:flutter_intermediate_week1/views/movie_player.dart';

class HomeMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF56CBF9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SafeArea(
              child: Text(
                "Aplikasi Movie dengan Database Mysql",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              child: Card(
                elevation: 1,
                child: Container(
                  color: Color(0xFF81F4E1),
                  height: size.height * 0.3,
                  width: size.width * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.ondemand_video_rounded,
                        size: 100,
                        color: Color(0xFFFF729F),
                      ),
                      Text(
                        "List semua movie",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
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
                    builder: (context) => MoviePlayer(
                      title: "Semua Movie Upin & Ipin",
                    ),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(
                elevation: 1,
                child: Container(
                  color: Color(0xFFFF729F),
                  height: size.height * 0.3,
                  width: size.width * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.live_tv,
                        color: Color(0xFF56CBF9),
                        size: 100,
                      ),
                      Text(
                        "List movie yang disukai",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
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
                        builder: (context) => MoviePlayer(
                            title: "Movie Upin & Ipin yang disukai")));
              },
            ),
          ],
        ),
      ),
    );
  }
}
