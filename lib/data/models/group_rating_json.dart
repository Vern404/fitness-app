import '../../domain/entities/group_rating.dart';

class GroupRatingJson {
  String? rating;
  int? totalRating;

  GroupRatingJson({
    this.rating,
    this.totalRating,
  });

  GroupRatingJson.fromJson(Map<String, dynamic> json) {
    rating = json['rating'];
    totalRating = json['totalRating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rating'] = rating;
    data['totalRating'] = totalRating;
    return data;
  }

  GroupRating toDomain() {
    return GroupRating(
      rating: double.parse(rating??"0").toInt(),
      totalRating: totalRating,
    );
  }
}