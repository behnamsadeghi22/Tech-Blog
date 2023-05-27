class HashTagModel {
  String title;

  HashTagModel({required this.title});
}

class BlogModel {
  int id;
  String imageUrl;
  String title;
  String writer;
  String writerImageUrl;
  String date;
  String content;
  String views;

  BlogModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.writer,
    required this.writerImageUrl,
    required this.date,
    required this.content,
    required this.views,
  });
}

class PodcastModel {
  String title;
  String imageUrl;
  String writer;
  String listens;

  PodcastModel(
      {required this.title,
      required this.imageUrl,
      required this.writer,
      required this.listens});
}
