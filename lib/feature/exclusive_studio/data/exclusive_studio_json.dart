import 'package:json_annotation/json_annotation.dart';

part 'exclusive_studio_json.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class ExclusiveStudioListJson {
  List<ExclusiveStudioJson>? items;
  num? totalItems;
  num? totalPages;
  num? currentPage;
  num? pageSize;

  ExclusiveStudioListJson();

  factory ExclusiveStudioListJson.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioListJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioListJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ExclusiveStudioJson {
  String? id;
  bool? isExclusive;
  String? status;
  String? statusLabel;
  bool? deleted;
  ExclusiveStudioDetailsJson? studio;
  String? instructorName;
  String? instructorCode;
  String? instructorEmail;
  String? instructorPhone;
  List<ExclusiveStudioWorkHoursJson>? workHours;

  ExclusiveStudioJson();

  factory ExclusiveStudioJson.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ExclusiveStudioDetailsJson {
  String? id;
  String? name;
  String? address;
  List<String>? pictures;

  ExclusiveStudioDetailsJson();

  factory ExclusiveStudioDetailsJson.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioDetailsJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioDetailsJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ExclusiveStudioWorkHoursJson {
  String? type;
  List<ExclusiveSlotJson>? slots;

  ExclusiveStudioWorkHoursJson();

  factory ExclusiveStudioWorkHoursJson.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioWorkHoursJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioWorkHoursJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ExclusiveSlotJson {
  String? start;
  String? end;

  ExclusiveSlotJson();

  factory ExclusiveSlotJson.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveSlotJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveSlotJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ExclusiveStudioRatesJson {
  String? type;
  List<ExclusiveRatesJson>? rates;

  ExclusiveStudioRatesJson();

  factory ExclusiveStudioRatesJson.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioRatesJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioRatesJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class ExclusiveRatesJson {
  String? start;
  String? end;
  String? price;

  ExclusiveRatesJson();

  factory ExclusiveRatesJson.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveRatesJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveRatesJsonToJson(this);
}
