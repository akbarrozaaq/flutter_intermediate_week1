import 'dart:convert';
import 'package:flutter_intermediate_week1/model/api.dart';
import 'package:flutter_intermediate_week1/model/video_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FavoriteMoviePlayer extends StatefulWidget {
  final String title;
  final String email;

  FavoriteMoviePlayer({this.title, this.email});
  @override
  _FavoriteMoviePlayerState createState() => _FavoriteMoviePlayerState();
}

class _FavoriteMoviePlayerState extends State<FavoriteMoviePlayer> {
  List<VideoModel> videoModel;

  Future<List<VideoModel>> getPlaylist() async {
    final response =
        await http.get(Uri.parse(BaseUrl.dataFavoriteTampil + widget.email));
    List res = jsonDecode(response.body);
    List<VideoModel> data = [];
    for (var i = 0; i < res.length; i++) {
      var video = VideoModel.fromJson(res[i]);
      data.add(video);
    }

    videoModel = data;

    return videoModel;
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
              ? FavoritePlaylist(snapshot.data, widget.email)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class FavoritePlaylist extends StatefulWidget {
  final List<VideoModel> listYt;
  final String email;

  FavoritePlaylist(this.listYt, this.email);

  @override
  _FavoritePlaylistState createState() => _FavoritePlaylistState();
}

class _FavoritePlaylistState extends State<FavoritePlaylist> {
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => FavoriteShowVideo(
                  //           "https://youtube.com/embed/${widget.listYt[index].videoId}")),
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavoriteShowDetailVideo(
                              judul: widget.listYt[index].videoJudul,
                              gambar: widget.listYt[index].videoGambar,
                              video: widget.listYt[index].videoId,
                              isi: widget.listYt[index].videoDeskripsi,
                              email: widget.email,
                            )),
                  );
                },
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              NetworkImage(widget.listYt[index].videoGambar))),
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
                          widget.listYt[index].videoJudul,
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

class FavoriteShowDetailVideo extends StatefulWidget {
  FavoriteShowDetailVideo(
      {this.email, this.judul, this.isi, this.gambar, this.video});
  final String email;
  final String judul;
  final String isi;
  final String gambar;
  final String video;

  @override
  _FavoriteShowDetailVideoState createState() =>
      _FavoriteShowDetailVideoState();
}

class _FavoriteShowDetailVideoState extends State<FavoriteShowDetailVideo> {
  _deleteFavorite() async {
    final response = await http.post(Uri.parse(BaseUrl.dataFavoriteTampil),
        body: {"email": widget.email, "idvideo": widget.video});
    final data = jsonDecode(response.body);
    int value = data['value'];
    String pesan = data['message'];
    if (value == 1) {
      _showDialog("Berhasil", pesan);
      print(value);
      print(pesan);
    } else {
      _showDialog("Gagal", pesan);
      print(value);
      print(pesan);
    }
  }

  void _showDialog(String title, String content) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(title),
          content: new Text(content),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoriteShowVideo(
                      "https://youtube.com/embed/${widget.video}"),
                ),
              );
            },
            child: Stack(
              children: [
                Container(
                  height: 240,
                  width: size.width,
                  child: Hero(
                    tag: widget.gambar,
                    child: Material(
                      child: InkWell(
                        child: Image.network(
                          widget.gambar,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //   top: 10,
                //   child: namaApp(20, Colors.white, Colors.white),
                // ),

                Positioned(
                  top: 100,
                  right: size.width * 0.5 - 25,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(4),
                    child: Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: Text(
              widget.judul,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 8),
            child: Text(
              "Deskripsi :",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
            child: Text(
              widget.isi,
              style: TextStyle(fontSize: 20),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //       bottom: 16.0, right: 16.0, left: 16.0, top: 8),
          //   child: ElevatedButton(
          //       style: ButtonStyle(
          //         backgroundColor: MaterialStateProperty.all(
          //           Color(0xFFFF729F),
          //         ),
          //       ),
          //       onPressed: () {
          //         _deleteFavorite();
          //       },
          //       child: Text("Hapus dari Favorite")),
          // )
        ],
      ),
    );
  }
}

class FavoriteShowVideo extends StatelessWidget {
  final url;
  FavoriteShowVideo(this.url);

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
