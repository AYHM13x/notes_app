class NoteModel {
  final String? title, content, dateTime;
  final int? Color;

  NoteModel({
    required this.title,
    required this.content,
    required this.dateTime,
    required this.Color,
  });

  // factory NoteModel.fromjson(jsonData) {
  //   return NoteModel(title: );
  // }
}
