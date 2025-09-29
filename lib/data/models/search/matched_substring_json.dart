import '../../../domain/entities/search/matched_substring.dart';

class MatchedSubstringJson {
  int? length;
  int? offset;

  MatchedSubstringJson({this.length, this.offset});

  MatchedSubstringJson.fromJson(Map<String, dynamic> json) {
    length = json['length'];
    offset = json['offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['length'] = length;
    data['offset'] = offset;
    return data;
  }

  MatchedSubstring toDomain() {
    return MatchedSubstring(
      length: length,
      offset: offset,
    );
  }
}