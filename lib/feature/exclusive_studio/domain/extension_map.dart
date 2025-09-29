import 'package:ifit/feature/exclusive_studio/data/exclusive_studio_json.dart';
import 'package:ifit/feature/exclusive_studio/domain/exclusive_studio_entity.dart';

extension ExclusiveStudioListMapper on ExclusiveStudioListJson {
  ExclusiveStudioListEntity toDomain() {
    return ExclusiveStudioListEntity(
      items: items?.map((e) => e.toDomain()).toList(),
      totalItems: items?.where((item) => item.status == 'active').length,
      totalPages: totalPages,
      currentPage: currentPage,
      pageSize: pageSize,
    );
  }
}

extension ExclusiveStudioMapper on ExclusiveStudioJson {
  ExclusiveStudioEntity toDomain() {
    return ExclusiveStudioEntity(
      id: id,
      isExclusive: isExclusive,
      status: status,
      statusLabel: statusLabel,
      deleted: deleted,
      studio: studio?.toDomain(),
      instructorName: instructorName,
      instructorCode: instructorCode,
      instructorEmail: instructorEmail,
      instructorPhone: instructorPhone,
      workHours: workHours?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension ExclusiveStudioDetailsMapper on ExclusiveStudioDetailsJson {
  ExclusiveStudioDetailsEntity toDomain() {
    return ExclusiveStudioDetailsEntity(
      id: id,
      name: name,
      address: address,
      pictures: pictures,
    );
  }
}

extension ExclusiveStudioWorkHoursMapper on ExclusiveStudioWorkHoursJson {
  ExclusiveStudioWorkHoursEntity toDomain() {
    return ExclusiveStudioWorkHoursEntity(
      type: type,
      slots: slots?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension ExclusiveSlotMapper on ExclusiveSlotJson {
  ExclusiveSlotEntity toDomain() {
    return ExclusiveSlotEntity(start: start, end: end);
  }
}

extension ExclusiveStudioRatesMapper on ExclusiveStudioRatesJson {
  ExclusiveStudioRatesEntity toDomain() {
    return ExclusiveStudioRatesEntity(
      type: type,
      rates: rates?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension ExclusiveRatesMapper on ExclusiveRatesJson {
  ExclusiveRatesEntity toDomain() {
    return ExclusiveRatesEntity(start: start, end: end, price: price);
  }
}
