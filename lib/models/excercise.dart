class Exercise {
  Exercise({
    required this.title,
    required this.prelude,
    required this.duration,
  });

  String title;
  int prelude;
  int duration;

  factory Exercise.fromJson(Map<String, dynamic> json) => Exercise(
        title: json["title"],
        prelude: json["prelude"],
        duration: json["duration"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "prelude": prelude,
        "duration": duration,
      };
}
