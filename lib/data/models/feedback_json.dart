// feedback_json.dart

import 'package:ifit/domain/entities/feedback.dart';

class FeedbackJson {
  String? rating;
  String? feedback;
  DateTime? feedbackAt;

  FeedbackJson({
    this.rating,
    this.feedback,
    this.feedbackAt,
  });

  FeedbackJson.fromJson(Map<String, dynamic> json) {
    rating = json['rating'];
    feedback = json['feedback'];
    feedbackAt = json['feedbackAt'] != null ? DateTime.parse(json['feedbackAt']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['rating'] = rating;
    data['feedback'] = feedback;
    data['feedbackAt'] = feedbackAt?.toIso8601String();
    return data;
  }

  Feedback toDomain() {
    return Feedback(
      rating: double.tryParse(rating??"0")??0,
      feedback: feedback,
      feedbackAt: feedbackAt,
    );
  }
}
