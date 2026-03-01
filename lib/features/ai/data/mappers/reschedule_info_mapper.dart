import '../../domain/models/reschedule_info.dart';
import '../dto/reschedule_info_dto.dart';

extension RescheduleInfoDomain on RescheduleInfoDto{
  RescheduleInfo toDomain() => RescheduleInfo(
      dueAt: dueAt,
      description: description
  );
}