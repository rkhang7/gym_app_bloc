import 'package:app_complete_youtube/models/exercise.dart';

class Workout {
  final String? title;
  final List<Exercise> exercises;
  Workout({
    this.title,
    required this.exercises,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    List<Exercise> exercises = [];

    int index = 0;
    int startTime = 0;

    for (var ex in (json['exercises']) as Iterable) {
      exercises.add(Exercise.fromJson(json, index, startTime));
    }

    return Workout(title: json['title'] as String?, exercises: exercises);
  }
}
