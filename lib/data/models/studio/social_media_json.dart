import 'package:ifit/domain/entities/studio/social_media.dart';

class SocialMediaJson {
  String? facebook;
  String? instagram;

  SocialMediaJson({this.facebook, this.instagram});

  SocialMediaJson.fromJson(Map<String, dynamic> json) {
    facebook = json['facebook'];
    instagram = json['instagram'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['facebook'] = facebook;
    data['instagram'] = instagram;
    return data;
  }

  SocialMedia toDomain() {
    return SocialMedia(facebook: facebook, instagram: instagram);
  }
}
