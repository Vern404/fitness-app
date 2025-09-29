import 'package:ifit/domain/entities/comet_chat/comet_chat_entity.dart';

class CometChatUserJson {
  String? uid;
  String? authToken;
  int? createdAt;

  CometChatUserJson({this.uid, this.authToken, this.createdAt});

  CometChatUserJson.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    authToken = json['authToken'];
    createdAt = json['createdAt'];
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = uid;
    data['authToken'] = authToken;
    data['createdAt'] = createdAt;
    return data;
  }

  /// Convert to domain entity (if you have one)
  CometChatUser toDomain() {
    return CometChatUser(
      uid: uid ?? '',
      authToken: authToken ?? '',
      createdAt: createdAt ?? 0,
    );
  }
}
