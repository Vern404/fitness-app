import 'package:ifit/core/extensions/double_extension.dart';
import 'package:ifit/core/extensions/string_extension.dart';
import 'package:ifit/data/models/equipment_json.dart';
import 'package:ifit/data/models/studio/social_media_json.dart';
import 'package:ifit/domain/entities/studio/studio.dart';

import 'geocode_json.dart';

class StudioJson {
  String? id;
  String? name;
  String? descr;
  String? contactNo;
  String? email;
  String? address;
  String? placeId;
  GeocodeJson? geocode;
  double? distance;
  bool? instrLess;
  String? usagePolicies;
  bool? fav;
  List<String>? pictures;
  String? picture;
  SocialMediaJson? socialMedia;
  double? avgRating;
  int? totalRatingCount;
  List<EquipmentJson>? equipments;
  String? lat;
  String? lng;
  bool? groupClass;

  StudioJson({
    this.id,
    this.name,
    this.descr,
    this.contactNo,
    this.email,
    this.address,
    this.placeId,
    this.geocode,
    this.distance,
    this.instrLess,
    this.usagePolicies,
    this.fav,
    this.pictures,
    this.picture,
    this.socialMedia,
    this.avgRating,
    this.totalRatingCount,
    this.equipments,
    this.lat,
    this.lng,
    this.groupClass,
  });

  StudioJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    descr = json['descr'];
    contactNo = json['contactNo'];
    email = json['email'];
    address = json['address'];
    placeId = json['placeId'];
    geocode = json['geocode'] != null
        ? GeocodeJson.fromJson(json['geocode'])
        : null;
    distance = json['distance'];
    instrLess = json['instrLess'];
    usagePolicies = json['usagePolicies'];
    fav = json['fav'];
    picture = json['picture'];
    pictures = json['pictures']?.cast<String>() ?? [];
    socialMedia = json['socialMedia'] != null
        ? SocialMediaJson.fromJson(json['socialMedia'])
        : null;
    avgRating = (json['avgRating'] as Object?).toDoubleOrZero();
    totalRatingCount = json['totalRatingCount'];
    if (json['equipments'] != null) {
      equipments = <EquipmentJson>[];
      json['equipments'].forEach((v) {
        equipments!.add(EquipmentJson.fromJson(v));
      });
    }
    lat = json['lat'];
    lng = json['lng'];
    groupClass = json['groupClass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['descr'] = descr;
    data['contactNo'] = contactNo;
    data['email'] = email;
    data['address'] = address;
    data['placeId'] = placeId;
    if (geocode != null) {
      data['geocode'] = geocode!.toJson();
    }
    data['distance'] = distance;
    data['instrLess'] = instrLess;
    data['usagePolicies'] = usagePolicies;
    data['fav'] = fav;
    data['picture'] = picture;
    data['pictures'] = pictures;
    if (socialMedia != null) {
      data['socialMedia'] = socialMedia!.toJson();
    }
    data['avgRating'] = avgRating;
    data['totalRatingCount'] = totalRatingCount;
    if (equipments != null) {
      data['equipments'] = equipments!.map((v) => v.toJson()).toList();
    }
    data['lat'] = lat;
    data['lng'] = lng;
    data['groupClass'] = groupClass;
    return data;
  }

  Studio toDomain() {
    return Studio(
      id: id,
      name: name,
      descr: descr,
      contactNo: contactNo,
      email: email,
      address: address,
      placeId: placeId,
      geocode: geocode?.toDomain(),
      distance: distance?.toStringAsFixed(0).toIndianFormat(),
      instrLess: instrLess,
      usagePolicies: usagePolicies,
      fav: fav,
      picture: picture,
      pictures: pictures,
      socialMedia: socialMedia?.toDomain(),
      avgRating: avgRating ?? 0,
      totalRatingCount: totalRatingCount,
      equipments: equipments?.map((eq) => eq.toDomain()).toList() ?? [],
      lat: double.tryParse(lat ?? "0"),
      lng: double.tryParse(lng ?? "0"),
      groupClass: groupClass,
    );
  }
}
