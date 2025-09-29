// notes_json.dart
import 'package:ifit/domain/entities/booking/notes.dart';

class NotesJson {
  String? sessionState;
  String? sessionTarget;

  NotesJson({this.sessionState, this.sessionTarget});

  NotesJson.fromJson(Map<String, dynamic> json) {
    sessionState = json['sessionState'];
    sessionTarget = json['sessionTarget'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sessionState'] = sessionState;
    data['sessionTarget'] = sessionTarget;
    return data;
  }

  Notes toDomain() {
    return Notes(
      sessionState: sessionState,
      sessionTarget: sessionTarget,
    );
  }
}
