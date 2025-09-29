import 'package:ifit/domain/entities/ad_hoc/create_ad_hoc_entity.dart';

class CreateAdHocClassJson {
  String? gpClassLinkId;
  String? groupClassId;
  List<String>? bookingIds;

  CreateAdHocClassJson({this.gpClassLinkId, this.groupClassId, this.bookingIds});

  CreateAdHocClassJson.fromJson(Map<String, dynamic> json) {
    gpClassLinkId = json['gpClassLinkId'];
    groupClassId = json['groupClassId'];
    bookingIds = (json['bookingIds'] as List?)?.map((e) => e.toString()).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gpClassLinkId'] = gpClassLinkId;
    data['groupClassId'] = groupClassId;
    data['bookingIds'] = bookingIds;
    return data;
  }

  CreateAdHocClassEntity toDomain() {
    return CreateAdHocClassEntity(
      gpClassLinkId: gpClassLinkId ?? '',
      groupClassId: groupClassId ?? '',
      bookingIds: bookingIds ?? [],
    );
  }
}
