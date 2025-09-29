import '../../domain/entities/app_notification.dart';

class AppNotificationJson {
  String? id;
  String? title;
  String? body;
  String? go;
  String? at;
  bool? isRead;

  AppNotificationJson({
    this.id,
    this.title,
    this.body,
    this.go,
    this.at,
    this.isRead,
  });

  AppNotificationJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    go = json['go'];
    at = json['at'];
    isRead = json['isRead'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    data['go'] = go;
    data['at'] = at;
    data['isRead'] = isRead;
    return data;
  }

  AppNotification toDomain() {
    return AppNotification(
      id: id,
      title: title,
      body: body,
      go: go,
      at: DateTime.tryParse(at!),
      isRead: isRead ?? true,
    );
  }
}
