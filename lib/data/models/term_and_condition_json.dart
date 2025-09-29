
import '../../domain/entities/term_and_condition.dart';

class TermAndConditionJson {
  int? version;
  String? content;
  String? createdAt;

  TermAndConditionJson({this.version, this.content, this.createdAt});

  TermAndConditionJson.fromJson(Map<String, dynamic> json) {
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

  TermAndCondition toDomain() {
    return TermAndCondition(
      version: version,
      content: content,
      createdAt: createdAt,
    );
  }
}
