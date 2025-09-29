import '../../../domain/entities/search/search_location_suggestion.dart';
import 'matched_substring_json.dart';
import 'structured_formatting_json.dart';

class SearchLocationSuggestionJson {
  String? description;
  List<MatchedSubstringJson>? matchedSubstrings;
  String? placeId;
  String? reference;
  StructuredFormattingJson? structuredFormatting;

  SearchLocationSuggestionJson({
    this.description,
    this.matchedSubstrings,
    this.placeId,
    this.reference,
    this.structuredFormatting,
  });

  SearchLocationSuggestionJson.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    if (json['matched_substrings'] != null) {
      matchedSubstrings = <MatchedSubstringJson>[];
      json['matched_substrings'].forEach((v) {
        matchedSubstrings!.add(MatchedSubstringJson.fromJson(v));
      });
    }
    placeId = json['place_id'];
    reference = json['reference'];
    structuredFormatting =
        json['structured_formatting'] != null
            ? StructuredFormattingJson.fromJson(json['structured_formatting'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    if (matchedSubstrings != null) {
      data['matched_substrings'] =
          matchedSubstrings!.map((v) => v.toJson()).toList();
    }
    data['place_id'] = placeId;
    data['reference'] = reference;
    if (structuredFormatting != null) {
      data['structured_formatting'] = structuredFormatting!.toJson();
    }
    return data;
  }

  SearchLocationSuggestion toDomain() {
    return SearchLocationSuggestion(
      description: description,
      matchedSubstrings: matchedSubstrings?.map((e) => e.toDomain()).toList(),
      placeId: placeId,
      reference: reference,
      structuredFormatting: structuredFormatting?.toDomain(),
    );
  }
}
