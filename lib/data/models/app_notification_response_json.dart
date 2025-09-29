import 'package:ifit/data/models/app_notification_json.dart';
import '../../domain/entities/app_notification_response.dart';

class AppNotificationResponseJson {
  int? unreadCount;
  List<AppNotificationJson>? messages;

  AppNotificationResponseJson({this.unreadCount, this.messages});

  AppNotificationResponseJson.fromJson(Map<String, dynamic> json) {
    unreadCount = json['unreadCount'];
    if (json['messages'] != null) {
      messages = <AppNotificationJson>[];
      json['messages'].forEach((v) {
        messages!.add(AppNotificationJson.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['unreadCount'] = unreadCount;
    if (messages != null) {
      data['messages'] = messages!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  AppNotificationResponse toDomain() {
    return AppNotificationResponse(
      unreadCount: unreadCount ?? 0,
      messages: messages?.map((msg) => msg.toDomain()).toList() ?? [],
    );
  }
}
