import '../../../domain/entities/search/structured_formatting.dart';
import 'matched_substring_json.dart';

class StructuredFormattingJson {
  String? mainText;
  List<MatchedSubstringJson>? mainTextMatchedSubstrings;
  String? secondaryText;

  StructuredFormattingJson({
    this.mainText,
    this.mainTextMatchedSubstrings,
    this.secondaryText,
  });

  StructuredFormattingJson.fromJson(Map<String, dynamic> json) {
    mainText = json['main_text'];
    if (json['main_text_matched_substrings'] != null) {
      mainTextMatchedSubstrings = <MatchedSubstringJson>[];
      json['main_text_matched_substrings'].forEach((v) {
        mainTextMatchedSubstrings!.add(MatchedSubstringJson.fromJson(v));
      });
    }
    secondaryText = json['secondary_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['main_text'] = mainText;
    if (mainTextMatchedSubstrings != null) {
      data['main_text_matched_substrings'] =
          mainTextMatchedSubstrings!.map((v) => v.toJson()).toList();
    }
    data['secondary_text'] = secondaryText;
    return data;
  }

  StructuredFormatting toDomain() {
    return StructuredFormatting(
      mainText: mainText,
      mainTextMatchedSubstrings:
      mainTextMatchedSubstrings?.map((e) => e.toDomain()).toList(),
      secondaryText: secondaryText,
    );
  }
}