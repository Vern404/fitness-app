import '../../../domain/entities/booking/session_feedback.dart';

class SessionFeedbackJson {
  List<String>? segments;
  String? feedback;
  int? overallRating;
  int? recordMode;

  SessionFeedbackJson({
    this.segments,
    this.feedback,
    this.overallRating,
    this.recordMode,
  });

  SessionFeedbackJson.fromJson(Map<String, dynamic> json) {
    segments = json['segments']?.cast<String>();
    feedback = json['feedback'];
    overallRating = json['overallRating'];
    recordMode = json['record_mode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['segments'] = segments;
    data['feedback'] = feedback;
    data['overallRating'] = overallRating;
    data['record_mode'] = recordMode;
    return data;
  }

  SessionFeedback toDomain() {
    return SessionFeedback(
      segments: segments,
      feedback: feedback,
      overallRating: overallRating?.toDouble(),
      recordMode: recordMode,
    );
  }
}