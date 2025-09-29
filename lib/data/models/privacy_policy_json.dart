
import '../../domain/entities/privacy_policy.dart';

class PrivacyPolicyJson {
  int? version;
  String? content;
  String? createdAt;

  PrivacyPolicyJson({this.version, this.content, this.createdAt});

  PrivacyPolicyJson.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    content = json['content'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['version'] = version;
    data['content'] = content;
    data['createdAt'] = createdAt;
    return data;
  }

  PrivacyPolicy toDomain() {
    return PrivacyPolicy(
      version: version,
      content: content,
      createdAt: createdAt,
    );
  }
}
