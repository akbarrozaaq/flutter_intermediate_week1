class VideoModel {
  final String videoId;
  final String videoJudul;
  final String videoGambar;
  final String videoDeskripsi;

  VideoModel(
      {this.videoId, this.videoJudul, this.videoGambar, this.videoDeskripsi});

  factory VideoModel.fromJson(Map<String, dynamic> object) {
    return VideoModel(
      videoId: object['video_id'],
      videoJudul: object['video_judul'],
      videoGambar: object['video_gambar'],
      videoDeskripsi: object['video_deskripsi'],
    );
  }
}
