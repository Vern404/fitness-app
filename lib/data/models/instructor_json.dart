import 'package:ifit/core/extensions/double_extension.dart';
import 'package:ifit/data/models/equipment_json.dart';
import 'package:ifit/data/models/studio/studio_json.dart';

import '../../domain/entities/instructor.dart';

class InstructorJson {
  String? id;
  String? name;
  String? descr;
  String? facebook;
  String? instagram;
  String? certifications;
  String? specialisations;
  List<String>? pictures;
  bool? onboarded;
  bool? isCompleted;
  bool? fav;
  String? picture;
  List<StudioJson>? prefStudios;
  double? avgRating;
  int? totalRatingCount;
  int? totalBookings;
  List<EquipmentJson>? equipments;
  String? code;

  InstructorJson({
    this.id,
    this.name,
    this.descr,
    this.facebook,
    this.instagram,
    this.certifications,
    this.specialisations,
    this.pictures,
    this.onboarded,
    this.isCompleted,
    this.fav,
    this.picture,
    this.prefStudios,
    this.avgRating,
    this.totalRatingCount,
    this.totalBookings,
    this.equipments,
    this.code,
  });

  InstructorJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    descr = json['descr'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    certifications = json['certifications'];
    specialisations = json['specialisations'];
    pictures = json['pictures']?.cast<String>() ?? [];
    onboarded = json['onboarded'];
    isCompleted = json['isCompleted'];
    fav = json['fav'] ?? json['fave'];
    picture = json['picture'];
    if (json['prefStudios'] != null) {
      prefStudios = <StudioJson>[];
      json['prefStudios'].forEach((v) {
        prefStudios!.add(StudioJson.fromJson(v));
      });
    }
    avgRating = (json['avgRating'] as Object?)?.toDoubleOrZero();
    totalRatingCount = json['totalRatingCount'];
    totalBookings = json['totalBookings'];
    if (json['equipments'] != null) {
      equipments = <EquipmentJson>[];
      json['equipments'].forEach((v) {
        equipments!.add(EquipmentJson.fromJson(v));
      });
    }
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['descr'] = descr;
    data['facebook'] = facebook;
    data['instagram'] = instagram;
    data['certifications'] = certifications;
    data['specialisations'] = specialisations;
    data['pictures'] = pictures;
    data['onboarded'] = onboarded;
    data['isCompleted'] = isCompleted;
    data['fav'] = fav;
    data['picture'] = picture;
    if (prefStudios != null) {
      data['prefStudios'] = prefStudios!.map((v) => v.toJson()).toList();
    }
    data['avgRating'] = avgRating;
    data['totalRatingCount'] = totalRatingCount;
    data['totalBookings'] = totalBookings;
    if (equipments != null) {
      data['equipments'] = equipments!.map((v) => v.toJson()).toList();
    }
    data['code'] = code;
    return data;
  }

  Instructor toDomain() {
    return Instructor(
      id: id,
      name: name,
      descr: descr,
      facebook: facebook,
      instagram: instagram,
      certifications: certifications,
      specialisations: specialisations,
      onboarded: onboarded,
      isCompleted: isCompleted,
      fav: fav,
      picture: picture,
      avgRating: avgRating,
      totalRatingCount: totalRatingCount,
      totalBookings: totalBookings,
      pictures: pictures ?? [],
      equipments: equipments?.map((data) => data.toDomain()).toList() ?? [],
      prefStudios: prefStudios?.map((data) => data.toDomain()).toList() ?? [],
      code: code,
    );
  }
}
