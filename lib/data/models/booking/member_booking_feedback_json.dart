import '../../../domain/entities/booking/member_booking_feedback.dart';

class MemberBookingFeedbackJson {
  String? instructorFeedback;
  int? instructorRating;
  String? studioFeedback;
  int? studioRating;
  bool? isPrivate;

  MemberBookingFeedbackJson({
    this.instructorFeedback,
    this.instructorRating,
    this.studioFeedback,
    this.studioRating,
    this.isPrivate,
  });

  MemberBookingFeedbackJson.fromJson(Map<String, dynamic> json) {
    instructorFeedback = json['instructorFeedback'];
    instructorRating = json['instructorRating'];
    studioFeedback = json['studioFeedback'];
    studioRating = json['studioRating'];
    isPrivate = json['isPrivate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['instructorFeedback'] = instructorFeedback;
    data['instructorRating'] = instructorRating;
    data['studioFeedback'] = studioFeedback;
    data['studioRating'] = studioRating;
    data['isPrivate'] = isPrivate;
    return data;
  }

  MemberBookingFeedback toDomain() {
    return MemberBookingFeedback(
      instructorFeedback: instructorFeedback,
      instructorRating: instructorRating,
      studioFeedback: studioFeedback,
      studioRating: studioRating,
      isPrivate: isPrivate,
    );
  }
}