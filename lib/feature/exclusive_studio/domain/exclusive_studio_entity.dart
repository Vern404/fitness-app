import 'package:freezed_annotation/freezed_annotation.dart';

part 'exclusive_studio_entity.freezed.dart';
part 'exclusive_studio_entity.g.dart';

/// =======================
/// ExclusiveStudioListEntity
/// =======================
@freezed
@JsonSerializable()
class ExclusiveStudioListEntity with _$ExclusiveStudioListEntity {
  const ExclusiveStudioListEntity({
    this.items,
    this.totalItems,
    this.totalPages,
    this.currentPage,
    this.pageSize,
  });

  @override
  final List<ExclusiveStudioEntity>? items;
  @override
  final num? totalItems;
  @override
  final num? totalPages;
  @override
  final num? currentPage;
  @override
  final num? pageSize;

  factory ExclusiveStudioListEntity.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioListEntityToJson(this);
}

/// =======================
/// ExclusiveStudioEntity
/// =======================
@freezed
@JsonSerializable()
class ExclusiveStudioEntity with _$ExclusiveStudioEntity {
  const ExclusiveStudioEntity({
    this.id,
    this.isExclusive,
    this.status,
    this.statusLabel,
    this.deleted,
    this.studio,
    this.instructorName,
    this.instructorCode,
    this.instructorEmail,
    this.instructorPhone,
    this.workHours,
  });

  @override
  final String? id;
  @override
  final bool? isExclusive;
  @override
  final String? status;
  @override
  final String? statusLabel;
  @override
  final bool? deleted;
  @override
  final ExclusiveStudioDetailsEntity? studio;
  @override
  final String? instructorName;
  @override
  final String? instructorCode;
  @override
  final String? instructorEmail;
  @override
  final String? instructorPhone;
  @override
  final List<ExclusiveStudioWorkHoursEntity>? workHours;

  factory ExclusiveStudioEntity.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioEntityToJson(this);
}

/// =======================
/// ExclusiveStudioDetailsEntity
/// =======================
@freezed
@JsonSerializable()
class ExclusiveStudioDetailsEntity with _$ExclusiveStudioDetailsEntity {
  const ExclusiveStudioDetailsEntity({
    this.id,
    this.name,
    this.address,
    this.pictures,
  });

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final List<String>? pictures;

  factory ExclusiveStudioDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioDetailsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioDetailsEntityToJson(this);
}

/// =======================
/// ExclusiveStudioWorkHoursEntity
/// =======================
@freezed
@JsonSerializable()
class ExclusiveStudioWorkHoursEntity with _$ExclusiveStudioWorkHoursEntity {
  const ExclusiveStudioWorkHoursEntity({
    this.type,
    this.slots,
  });

  @override
  final String? type;
  @override
  final List<ExclusiveSlotEntity>? slots;

  factory ExclusiveStudioWorkHoursEntity.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioWorkHoursEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioWorkHoursEntityToJson(this);
}

/// =======================
/// ExclusiveSlotEntity
/// =======================
@freezed
@JsonSerializable()
class ExclusiveSlotEntity with _$ExclusiveSlotEntity {
  const ExclusiveSlotEntity({
    this.start,
    this.end,
  });

  @override
  final String? start;
  @override
  final String? end;

  factory ExclusiveSlotEntity.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveSlotEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveSlotEntityToJson(this);
}

/// =======================
/// ExclusiveStudioRatesEntity
/// =======================
@freezed
@JsonSerializable()
class ExclusiveStudioRatesEntity with _$ExclusiveStudioRatesEntity {
  const ExclusiveStudioRatesEntity({
    this.type,
    this.rates,
  });

  @override
  final String? type;
  @override
  final List<ExclusiveRatesEntity>? rates;

  factory ExclusiveStudioRatesEntity.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveStudioRatesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveStudioRatesEntityToJson(this);
}

/// =======================
/// ExclusiveRatesEntity
/// =======================
@freezed
@JsonSerializable()
class ExclusiveRatesEntity with _$ExclusiveRatesEntity {
  const ExclusiveRatesEntity({
    this.start,
    this.end,
    this.price,
  });

  @override
  final String? start;
  @override
  final String? end;
  @override
  final String? price;

  factory ExclusiveRatesEntity.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveRatesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExclusiveRatesEntityToJson(this);
}
