import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VideoPlayer extends StatefulWidget {
  final String title;
  final Uri url;
  final String email;

  VideoPlayer({this.title, this.url, this.email});
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  Future<List> getPlaylist() async {
    final response = await http.get(widget.url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xFF56CBF9),
      ),
      body: FutureBuilder<List>(
        future: getPlaylist(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? Playlist(snapshot.data, widget.email)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class Playlist extends StatefulWidget {
  final List listYt;
  final String email;

  Playlist(this.listYt, this.email);

  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
// @override
// void initState() {
//   _getFavorite();
//   super.initState();
// }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: widget.listYt == null ? 0 : widget.listYt.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShowVideo(
                            "https://youtube.com/embed/${widget.listYt[index]['contentDetails']['videoId']}")),
                  );
                },
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.listYt[index]['snippet']
                              ['thumbnails']['high']['url']))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.1),
                      child: Container(
                        width: size.width * 0.75,
                        child: Text(
                          widget.listYt[index]['snippet']['title'],
                        ),
                      ),
                    ),
                    // IconButton(
                    //   icon: Icon(Icons.bookmark_outlined
                    //       // : Icons.bookmark_outline_rounded,
                    //       ),

                    //   // icon: _favorite(widget.listYt[index]['id']),
                    //   // icon: _favorite(
                    //   //     'UExrNTd6SExLbG5UOEVZN0U1RF9qLTdIY2lUZGJuRjN0Ui4xMkVGQjNCMUM1N0RFNEUx'),
                    //   onPressed: () {},
                    // ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        );
      },
    );
  }
}

class ShowVideo extends StatelessWidget {
  final url;
  ShowVideo(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
