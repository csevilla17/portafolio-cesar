class CommentModel {
  final String author;
  final String text;
  final String date;

  CommentModel({
    required this.author,
    required this.text,
    required this.date,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      author: json['author'] ?? '',
      text: json['text'] ?? '',
      date: json['date'] ?? '',
    );
  }
}
