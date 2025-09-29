import 'package:ifit/data/models/feedback_json.dart';
import 'package:ifit/domain/entities/feedback_response.dart';
import '../../domain/entities/group_rating.dart';
import 'group_rating_json.dart';

class FeedbackResponseJson {
  String? avgRating;
  int? totalRating;
  List<FeedbackJson>? feedback;
  List<GroupRatingJson>? groupsRating;

  FeedbackResponseJson({
    this.avgRating,
    this.totalRating,
    this.feedback,
    this.groupsRating,
  });

  FeedbackResponseJson.fromJson(Map<String, dynamic> json) {
    avgRating = json['avgRating'];
    totalRating = json['totalRating'];
    if (json['feedback'] != null) {
      feedback = <FeedbackJson>[];
      json['feedback'].forEach((v) {
        feedback!.add(FeedbackJson.fromJson(v));
      });
    }
    if (json['groupsRating'] != null) {
      groupsRating = <GroupRatingJson>[];
      json['groupsRating'].forEach((v) {
        groupsRating!.add(GroupRatingJson.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['avgRating'] = avgRating;
    data['totalRating'] = totalRating;
    if (feedback != null) {
      data['feedback'] = feedback!.map((v) => v.toJson()).toList();
    }
    if (groupsRating != null) {
      data['groupsRating'] = groupsRating!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  FeedbackResponse toDomain() {
    return FeedbackResponse(
      avgRating: double.tryParse(avgRating ?? "0") ?? 0,
      totalRating: totalRating,
      feedback: feedback?.map((e) => e.toDomain()).toList(),
      groupsRating: _completeAndSortRatings(
        groupsRating?.map((e) => e.toDomain()).toList() ?? [],
      ),
    );
  }

  List<GroupRating> _completeAndSortRatings(List<GroupRating> inputRatings) {
    // Create a map for easier lookup of existing ratings
    final ratingMap = {for (var r in inputRatings) r.rating: r.totalRating};

    // Generate complete list from 1 to 5 stars
    final completeRatings = List.generate(5, (index) {
      final starValue = index + 1;
      return GroupRating(
        rating: starValue,
        totalRating: ratingMap[starValue] ?? 0,
      );
    });

    // Sort by rating (already sorted since we generate in order)
    return completeRatings.reversed.toList();
  }
}
