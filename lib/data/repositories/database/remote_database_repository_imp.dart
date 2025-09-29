import 'dart:io';

import 'package:ifit/core/enums/app_user_role.dart';
import 'package:ifit/core/extensions/date_time_extension.dart';
import 'package:ifit/data/models/ad_hoc/create_ad_hoc_json.dart';
import 'package:ifit/data/models/ad_hoc/member_ad_hoc_invite_json.dart';
import 'package:ifit/data/models/ad_hoc/search_member_json.dart';
import 'package:ifit/data/models/ad_hoc/search_slot_json.dart';
import 'package:ifit/data/models/ad_hoc/search_studio_json.dart';
import 'package:ifit/data/models/app_notification_response_json.dart';
import 'package:ifit/data/models/app_user_json.dart';
import 'package:ifit/data/models/bank_account/bank_details_json.dart';
import 'package:ifit/data/models/bank_account/bank_list_json.dart';
import 'package:ifit/data/models/bank_account/bank_options_json.dart';
import 'package:ifit/data/models/blackout_dates_response_json.dart';
import 'package:ifit/data/models/booking/booking_count_json.dart';
import 'package:ifit/data/models/booking/booking_json.dart';
import 'package:ifit/data/models/booking/booking_review_json.dart';
import 'package:ifit/data/models/booking/booking_slot_json.dart';
import 'package:ifit/data/models/comet_chat/comet_chat_json.dart';
import 'package:ifit/data/models/credit/vp_package_json.dart';
import 'package:ifit/data/models/credit/vp_transaction_json.dart';
import 'package:ifit/data/models/equipment_type_json.dart';
import 'package:ifit/data/models/fcm_blackout_json.dart';
import 'package:ifit/data/models/feedback_response_json.dart';
import 'package:ifit/data/models/schedule_calendar_response_json.dart';
import 'package:ifit/data/models/studio/location_json.dart';
import 'package:ifit/data/models/credit/vp_credit_promo_json.dart';
import 'package:ifit/data/models/wallet_transaction/wallet_balance_json.dart';
import 'package:ifit/data/models/wallet_transaction/wallet_bank_list_json.dart';
import 'package:ifit/data/models/wallet_transaction/wallet_transaction_details_json.dart';
import 'package:ifit/data/models/wallet_transaction/wallet_transactions_json.dart';
import 'package:ifit/data/models/wallet_transaction/withdraw_wallet_json.dart';
import 'package:ifit/domain/entities/ad_hoc/create_ad_hoc_entity.dart';
import 'package:ifit/domain/entities/ad_hoc/member_ad_hoc_invite_entity.dart';
import 'package:ifit/domain/entities/ad_hoc/search_ad_hoc_slot_entity.dart';
import 'package:ifit/domain/entities/ad_hoc/search_member_entity.dart';
import 'package:ifit/domain/entities/ad_hoc/search_studio_entity.dart';
import 'package:ifit/domain/entities/app_user.dart';
import 'package:ifit/domain/entities/bank_account/bank_details_entity.dart';
import 'package:ifit/domain/entities/bank_account/bank_list_entity.dart';
import 'package:ifit/domain/entities/bank_account/bank_options_entity.dart';
import 'package:ifit/domain/entities/blackout_event.dart';
import 'package:ifit/domain/entities/booking/booking.dart';
import 'package:ifit/domain/entities/booking/booking_review.dart';
import 'package:ifit/domain/entities/booking/booking_slot.dart';
import 'package:ifit/domain/entities/comet_chat/comet_chat_entity.dart';
import 'package:ifit/domain/entities/credit/vp_package.dart';
import 'package:ifit/domain/entities/equipment_type.dart';
import 'package:ifit/domain/entities/fcm_blackout.dart';
import 'package:ifit/presentation/pages/main/profile/instructor/instructor_mobility/data/model/instructor_mobility_details_json.dart';
import 'package:ifit/presentation/pages/main/profile/instructor/instructor_mobility/data/model/mobility_json.dart';
import 'package:ifit/presentation/pages/main/profile/instructor/instructor_mobility/data/model/mobility_option_json.dart';
import 'package:ifit/presentation/pages/main/profile/instructor/instructor_mobility/data/repository/repository_helper.dart';
import 'package:ifit/presentation/pages/main/profile/instructor/instructor_mobility/domain/entities/instructor_mobility_details_entity.dart';
import 'package:ifit/presentation/pages/main/profile/instructor/instructor_mobility/domain/entities/mobility.dart';
import 'package:ifit/domain/entities/privacy_policy.dart';
import 'package:ifit/domain/entities/schedule_calendar_response.dart';
import 'package:ifit/domain/entities/search/search_location_suggestion.dart';
import 'package:ifit/domain/entities/studio/location.dart';
import 'package:ifit/domain/entities/studio/studio.dart';
import 'package:ifit/domain/entities/term_and_condition.dart';
import 'package:ifit/domain/entities/credit/vp_credit_promo_entity.dart';
import 'package:ifit/domain/entities/wallet_transaction/wallet_balance_entity.dart';
import 'package:ifit/domain/entities/wallet_transaction/wallet_bank_list_entity.dart';
import 'package:ifit/domain/entities/wallet_transaction/wallet_transaction_details.dart';
import 'package:ifit/domain/entities/wallet_transaction/wallet_transaction_list_entity.dart';
import 'package:ifit/domain/entities/wallet_transaction/withdraw_wallet_entity.dart';
import 'package:ifit/domain/http_req_param/booking_payment_req_param.dart';
import 'package:ifit/domain/http_req_param/booking_req_param.dart';
import 'package:ifit/domain/http_req_param/create_ad_hoc_req_param.dart';
import 'package:ifit/domain/http_req_param/edit_profile_req_param.dart';
import 'package:ifit/domain/http_req_param/register_instructor_req_param.dart';
import 'package:ifit/domain/http_req_param/register_member_req_param.dart';
import 'package:ifit/domain/http_req_param/save_blackout_req_param.dart';
import 'package:ifit/domain/http_req_param/setup_instructor_profile_req_param.dart';
import 'package:ifit/feature/booking_group_class/data/model/booking_group_class_slot_json.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity_mapper.dart';
import 'package:ifit/feature/exclusive_studio/data/exclusive_studio_json.dart';
import 'package:ifit/feature/exclusive_studio/domain/exclusive_studio_entity.dart';
import 'package:ifit/feature/exclusive_studio/domain/extension_map.dart';
import 'package:ifit/feature/waitlist/data/model/waitlist_booking_json.dart';
import 'package:ifit/feature/waitlist/domain/entity/waiting_booking_mapper.dart';
import 'package:ifit/feature/waitlist/domain/entity/waitlist_details_entity.dart';
import 'package:ifit/network/api_endpoint.dart';
import 'package:ifit/network/file_field.dart';
import 'package:ifit/network/network_repository.dart';
import 'package:ifit/presentation/pages/main/profile/instructor/instructor_mobility/domain/entities/mobility_option.dart';
import 'package:ifit/presentation/pages/main/profile/instructor/instructor_mobility/domain/entities/mobility_req_param.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/app_notification_response.dart';
import '../../../domain/entities/blackout_dates_response.dart';
import '../../../domain/entities/booking/booking_count.dart';
import '../../../domain/entities/booking/booking_refund.dart';
import '../../../domain/entities/booking/member_booking_feedback.dart';
import '../../../domain/entities/credit/vp_transaction.dart';
import '../../../domain/entities/feedback_response.dart';
import '../../../domain/entities/instructor.dart';
import '../../../domain/http_req_param/booking_and_session_filter_req_param.dart';
import '../../../domain/http_req_param/search_filter_req_param.dart';
import '../../../domain/http_req_param/session_record_req_param.dart';
import '../../../domain/repositories/database/remote_database_repository.dart';
import '../../../network/dio/api_response.dart';
import '../../models/blackout_event_json.dart';
import '../../models/booking/booking_refund_json.dart';
import '../../models/instructor_json.dart';
import '../../models/privacy_policy_json.dart';
import '../../models/search/search_location_suggestion_json.dart';
import '../../models/studio/studio_json.dart';
import '../../models/term_and_condition_json.dart';

class RemoteDatabaseRepositoryImp implements RemoteDatabaseRepository {
  final NetworkRepository networkRepository;

  RemoteDatabaseRepositoryImp(this.networkRepository);

  @override
  Future<bool> isAccountExist(AppUserRole role) async {
    ApiResponse apiResponse =
        await networkRepository.sendRequest(
              role == AppUserRole.instructor
                  ? APIEndpoint.checkInstructorExist
                  : APIEndpoint.checkMemberExist,
              returnFullResponse: true,
            )
            as ApiResponse;

    return apiResponse.statusCode == 200;
  }

  @override
  Future<List<EquipmentType>> getEquipmentTypes() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.equipmentTypes,
    );
    return (response as List)
        .map((data) => EquipmentTypeJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<Instructor> getInstructorProfile() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.instructorOwnProfile,
    );
    return (InstructorJson.fromJson(response).toDomain());
  }

  @override
  Future<AppUser> getMemberProfile() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.memberOwnProfile,
    );
    return AppUserJson.fromJson(response).toDomain();
  }

  @override
  Future<AppUser> registerMember({required RegisterMemberReqParam body}) async {
    await networkRepository.sendRequest(
      APIEndpoint.registerMember,
      body: body.toJson(),
      mode: NetworkRequestMode.post,
    );
    return await getMemberProfile();
  }

  @override
  Future<AppUser> registerInstructor({
    required RegisterInstructorReqParam body,
  }) async {
    await networkRepository.sendRequest(
      APIEndpoint.registerInstructor,
      body: body.toJson(),
      mode: NetworkRequestMode.post,
    );
    AppUser user = await getMemberProfile();
    user = user.copyWith(instructor: await getInstructorProfile());
    return user;
  }

  @override
  Future<String> uploadPicture(File file) async {
    var id = await networkRepository.sendRequest(
      APIEndpoint.uploadPicture,
      fileFields: [
        FileField(fieldName: 'file', files: [file]),
      ],
      mode: NetworkRequestMode.post,
      isFormData: true,
    );
    return id;
  }

  @override
  Future<List<String>> uploadMultiplePictures(List<File> files) async {
    // Create a list of futures using the existing uploadPicture method
    final uploadFutures = files.map((file) => uploadPicture(file)).toList();

    // Execute all uploads in parallel using Future.wait
    final ids = await Future.wait(uploadFutures);

    return ids;
  }

  @override
  Future<AppUser> setupInstructorProfile({
    required SetupInstructorProfileReqParam body,
  }) async {
    await networkRepository.sendRequest(
      APIEndpoint.setupInstructorProfile,
      body: body.toJson(),
      mode: NetworkRequestMode.post,
    );
    AppUser user = await getMemberProfile();
    user = user.copyWith(instructor: await getInstructorProfile());
    return user;
  }

  @override
  Future<void> editProfile({required EditProfileReqParam body}) async {
    await networkRepository.sendRequest(
      APIEndpoint.editProfile,
      body: body.toJson(),
      mode: NetworkRequestMode.post,
    );
  }

  @override
  Future<void> deleteAccount() async {
    await networkRepository.sendRequest(APIEndpoint.deleteAccount);
  }

  @override
  Future<void> addBlackOutEvent({required SaveBlackoutReqParam body}) async {
    await networkRepository.sendRequest(
      APIEndpoint.saveBlackout,
      mode: NetworkRequestMode.post,
      body: body.toJson(),
    );
  }

  @override
  Future<List<BlackoutDatesResponse>> getBlackoutEventsByMonth({
    required String year,
    required String month,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.getBlackoutEventsByMonth,
      parameters: {"year": year, "month": month},
    );
    List<BlackoutDatesResponse> blackoutDates = [];
    // Handle case where response is the expected Map format
    if (response is Map<String, dynamic>) {
      response.forEach(
        (key, value) => blackoutDates.add(
          BlackoutDatesResponseJson.fromJson({key: value}).toDomain(),
        ),
      );
    }
    return blackoutDates;
  }

  @override
  Future<List<BlackoutEvent>> getBlackoutEventsByDay({
    required DateTime date,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.getBlackoutEventsByDay,
      parameters: {"day": DateFormat('yyyy-MM-dd').format(date)},
    );
    return (response as List)
        .map((data) => BlackoutEventJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<void> deleteBlackOutEvent({required String id}) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.deleteBlackoutEvent}/$id",
    );
  }

  @override
  Future<List<Instructor>> getFavouriteInstructors() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.favouriteInstructors,
    );
    return (response as List)
        .map((data) => InstructorJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<List<Studio>> getFavouriteStudios() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.favouriteStudios,
    );
    return (response as List)
        .map((data) => StudioJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<List<Studio>> searchStudios({
    int pageNo = 1,
    int pageSize = 10,
    required SearchFilterReqParam searchFilterReqParam,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.searchStudios}/$pageNo/$pageSize",
      parameters: searchFilterReqParam.toJson(),
    );
    return (response as List)
        .map((data) => StudioJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<Instructor> getInstructorDetail({required String id}) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.getInstructorById}/$id",
    );
    return InstructorJson.fromJson(response).toDomain();
  }

  @override
  Future<List<Instructor>> searchInstructors({
    int pageNo = 1,
    int pageSize = 10,
    required SearchFilterReqParam searchFilterReqParam,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.searchInstructors}/$pageNo/$pageSize",
      parameters: searchFilterReqParam.toJson(),
    );
    return (response as List)
        .map((data) => InstructorJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<Studio> getStudioDetail({
    required String id,
    double? lat,
    double? lng,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.getStudioById}/$id",
      parameters: {"lat": lat, "lng": lng},
    );
    return StudioJson.fromJson(response).toDomain();
  }

  @override
  Future<void> markStudioPreferred({required String id}) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.markStudioPreferred}/$id",
    );
  }

  @override
  Future<void> unMarkStudioFromPreferred({required String id}) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.unMarkStudioFromPreferred}/$id",
    );
  }

  @override
  Future<bool> checkIsStudioPreferred({required String id}) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.checkStudioPreferred}/$id",
    );
    return response ?? false;
  }

  @override
  Future<void> markInstructorFavourite({required String id}) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.markInstructorFavourite}/$id",
    );
  }

  @override
  Future<void> markStudioFavourite({required String id}) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.markStudioFavourite}/$id",
    );
  }

  @override
  Future<void> unMarkInstructorFromFavourite({required String id}) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.unMarkInstructorFromFavourite}/$id",
    );
  }

  @override
  Future<void> unMarkStudioFromFavourite({required String id}) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.unMarkStudioFromFavourite}/$id",
    );
  }

  @override
  Future<FeedbackResponse> getInstructorFeedbacks({
    required String id,
    int pageNo = 1,
    int pageSize = 10,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.getInstructorById}/$id/feedback/$pageNo/$pageSize",
    );
    return FeedbackResponseJson.fromJson(response).toDomain();
  }

  @override
  Future<FeedbackResponse> getStudioFeedbacks({
    required String id,
    int pageNo = 1,
    int pageSize = 10,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.getStudioById}/$id/feedback/$pageNo/$pageSize",
    );
    return FeedbackResponseJson.fromJson(response).toDomain();
  }

  @override
  Future<List<MobilityOptionEntity>> getInstructorMobilityOptions() async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.getMobilityOptions,
    );

    final List<dynamic> list = response['data']['studioOptions'] ?? [];

    return list
        .map(
          (e) =>
              MobilityOptionJson.fromJson(e as Map<String, dynamic>).toDomain(),
        )
        .toList();
  }

  @override
  Future<InstructorMobilityEntity> getInstructorMobility() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.instructorMobility,
    );
    return InstructorMobilityJson.fromJson(response['data']).toDomain();
  }

  @override
  Future<InstructorMobilityDetailsEntity> getMobilityDetails({
    required String mobilityId,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.instructorMobility}/$mobilityId',
    );

    return InstructorMobilityDetailsJson.fromJson(response['data']).toDomain();
  }

  @override
  Future<InstructorMobilityDetailsEntity> createMobility({
    required MobilityReqParam params,
  }) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.instructorMobility,
      mode: NetworkRequestMode.post,
      body: params.toJson(),
    );
    return InstructorMobilityDetailsJson.fromJson(response['data']).toDomain();
  }

  @override
  Future<void> saveMobility({
    required String id,
    required MobilityReqParam params,
  }) async {
    await networkRepository.sendRequest(
      '${APIEndpoint.instructorMobility}/$id',
      mode: NetworkRequestMode.put,
      body: params.toJson(),
    );
  }

  @override
  Future<void> deleteMobility({required String mobilityId}) async {
    await networkRepository.sendRequest(
      '${APIEndpoint.instructorMobility}/$mobilityId',
      mode: NetworkRequestMode.delete,
    );
  }

  @override
  Future<List<SearchLocationSuggestion>> searchLocations({
    required String input,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.searchLocation,
      parameters: {"input": input},
    );
    return (response as List)
        .map((data) => SearchLocationSuggestionJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<Location> getLatLngByPlaceId({required String placeId}) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.getLatLngByPlaceId,
      parameters: {"placeId": placeId},
    );
    return LocationJson.fromJson(response['geometry']['location']).toDomain();
  }

  @override
  Future<BookingSlot?> getStudioAvailableSlots({
    required BookingReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bookingSlots,
      parameters: param.toJson(),
    );

    return BookingSlotJson.fromJson(response).toDomain();
  }

  @override
  Future <List<BookingSlotResult>> getStudiosWithSlotsAndInstructorInfo({
    required BookingReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bookingSlots,
      parameters: param.toJson(),
    );
    return (response['results'] as List)
        .map((data) => BookingSlotResultJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<BookingSlot?> getBookingEquipments({
    required BookingReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bookingEquipments,
      parameters: param.toJson(),
    );

    return BookingSlotJson.fromJson(response).toDomain();
  }

  @override
  Future<BookingReview> getBookingReview({
    required BookingReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bookingReview,
      parameters: param.toJson(),
    );
    return BookingReviewJson.fromJson(response).toDomain();
  }

  @override
  Future<String> makeBookingPayment({
    required BookingPaymentReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bookingPaymentByVpCredit,
      mode: NetworkRequestMode.post,
      body: param.toJson(),
    );
    return response['bookingId'];
  }

  @override
  Future<List<Booking>> getBookings({
    int pageNo = 1,
    int pageSize = 10,
    required BookingAndSessionFilterReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.memberBookings}/$pageNo/$pageSize",
      parameters: param.toJson(),
    );
    return (response as List)
        .map((booking) => BookingJson.fromJson(booking).toDomain())
        .toList();
  }

  @override
  Future<List<Booking>> getSessions({
    int pageNo = 1,
    int pageSize = 10,
    required BookingAndSessionFilterReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.instructorBookings}/$pageNo/$pageSize",
      parameters: param.toJson(),
    );
    return (response as List)
        .map((booking) => BookingJson.fromJson(booking).toDomain())
        .toList();
  }

  @override
  Future<Booking> getBookingById({required String id}) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.bookingById}/$id",
    );
    return BookingJson.fromJson(response).toDomain();
  }

  @override
  Future<Booking> getSessionById({required String id}) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.sessionById}/$id",
    );
    return BookingJson.fromJson(response).toDomain();
  }

  @override
  Future<void> saveSessionGiveFeedbackRecordByInstructor({
    required String bookingId,
    required SessionRecordReqParam body,
  }) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.saveSessionGiveFeedbackByInstructor}/$bookingId",
      mode: NetworkRequestMode.post,
      body: body.toJson(),
    );
  }

  @override
  Future<void> completeSessionByInstructor({
    required String bookingId,
    required SessionRecordReqParam body,
  }) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.completeSessionByInstructor}/$bookingId",
      mode: NetworkRequestMode.post,
      body: body.toJson(),
    );
  }

  @override
  Future<void> giveBookingFeedbackByMember({
    required String bookingId,
    required MemberBookingFeedback body,
  }) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.bookingGiveFeedbackByMember}/$bookingId",
      body: body.toJson(),
      mode: NetworkRequestMode.post,
    );
  }

  @override
  Future<BookingRefund> isRefundAvailable({required String bookingId}) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.bookingCancelRequest}/$bookingId",
    );
    return BookingRefundJson.fromJson(response).toDomain();
  }

  @override
  Future<void> bookingCancelByMember({
    required String bookingId,
    required String token,
    required String reason,
  }) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.bookingCancelByMember}/$bookingId",
      mode: NetworkRequestMode.post,
      body: {"token": token, "reason": reason},
    );
  }

  @override
  Future<void> bookingCancelByInstructor({
    required String bookingId,
    required String reason,
  }) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.bookingCancelByInstructor}/$bookingId",
      mode: NetworkRequestMode.post,
      body: {"reason": reason},
    );
  }

  @override
  Future<void> bookingInstructorDoesNotShowedUp({
    required String bookingId,
    required String remarks,
  }) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.bookingIsntructorNoShowMember}/$bookingId",
      mode: NetworkRequestMode.post,
      body: {"remarks": remarks},
    );
  }

  @override
  Future<List<Booking>> getBookingSchedulesByDay({
    required DateTime date,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bookingSchedulesByDay,
      parameters: {"day": DateFormat('yyyy-MM-dd').format(date)},
    );
    return (response as List)
        .map((data) => BookingJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<List<ScheduleCalendarResponse>> getBookingSchedulesByMonth({
    required String year,
    required String month,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bookingSchedulesByMonthAndYear,
      parameters: {"year": year, "month": month},
    );
    List<ScheduleCalendarResponse> bookingSchedules = [];
    // Handle case where response is the expected Map format
    if (response is Map<String, dynamic>) {
      response.forEach(
        (key, value) => bookingSchedules.add(
          ScheduleCalendarResponseJson.fromJson({key: value}).toDomain(),
        ),
      );
    }
    return bookingSchedules;
  }

  @override
  Future<FcmBlackout> getFcmBlackoutConfig() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.getFcmBlackoutConfig,
    );
    return FcmBlackoutJson.fromJson(response).toDomain();
  }

  @override
  Future<BookingCount> getBookingCounts() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bookingCounts,
      parameters: {"upcomingAndOngoing": true},
    );
    return BookingCountJson.fromJson(response).toDomain();
  }

  @override
  Future<void> saveFcmBlackoutConfig({
    required String startTime,
    required String endTime,
  }) async {
    await networkRepository.sendRequest(
      APIEndpoint.setFcmBlackoutConfig,
      parameters: {
        "start": startTime.to24HourFormat().replaceAll(":", ""),
        "end": endTime.to24HourFormat().replaceAll(":", ""),
      },
    );
  }

  @override
  Future<AppNotificationResponse> getAppNotifications({
    int pageNo = 1,
    int pageSize = 15,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.getAppNotifications}/$pageNo/$pageSize",
    );
    return AppNotificationResponseJson.fromJson(response).toDomain();
  }

  @override
  Future<void> setFcmToken({required String token}) async {
    await networkRepository.sendRequest(
      APIEndpoint.setFcmToken,
      mode: NetworkRequestMode.post,
      body: {"token": token},
    );
  }

  @override
  Future<void> unSetFcmToken() async {
    await networkRepository.sendRequest(
      APIEndpoint.unSetFcmToken,
      mode: NetworkRequestMode.post,
    );
  }

  @override
  Future<void> testFcm() async {
    await networkRepository.sendRequest(APIEndpoint.testFcm);
  }

  @override
  Future<void> markNotificationRead({required String notificationId}) async {
    await networkRepository.sendRequest(
      "${APIEndpoint.markNotificationRead}/$notificationId/read",
      mode: NetworkRequestMode.post,
    );
  }

  @override
  Future<List<VpPackage>> getVpPackages() async {
    var response = await networkRepository.sendRequest(APIEndpoint.vpPackages);
    return (response as List)
        .map((data) => VpPackageJson.fromJson(data).toDomain())
        .toList();
  }

  @override
  Future<String> buyVpPackage({required String packageId}) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.topUpCredit,
      mode: NetworkRequestMode.post,
      body: {"packageId": packageId},
    );
    return response;
  }

  @override
  Future<VpPromoCodeEntity> redeemVpPromoCode({
    required String promoCode,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.topUpPromoCode,
      mode: NetworkRequestMode.post,
      body: {"promoCode": promoCode},
    );
    return VpPromoCodeJson.fromJson(response).toDomain();
  }

  @override
  Future<List<VpTransactionGroup>> getVpTransactions({
    required List<String> types,
    DateTime? startDate,
    DateTime? endDate,
    int pageNo = 1,
    int pageSize = 10,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.vpTransactions}/$pageNo/$pageSize",
      parameters: {
        "types": types,
        "startDate": startDate == null
            ? null
            : DateFormat('yyyy-MM-dd').format(startDate),
        "endDate": endDate == null
            ? null
            : DateFormat('yyyy-MM-dd').format(endDate),
      },
    );

    // Step 1: Parse JSON into domain objects
    final transactions = (response as List)
        .map((data) => VpTransactionJson.fromJson(data).toDomain())
        .toList();

    // Step 2: Group transactions by month-year
    final Map<String, List<VpTransaction>> groupedMap = {};
    for (final tx in transactions) {
      if (tx.createdAt == null) continue;
      final key = DateFormat('dd MMM yyyy').format(tx.createdAt!);
      groupedMap.putIfAbsent(key, () => []);
      groupedMap[key]!.add(tx);
    }

    // Step 3: Convert Map into sorted list of groups
    final groups = groupedMap.entries.map((entry) {
      return VpTransactionGroup(
        monthYear: entry.key,
        transactions: entry.value,
      );
    }).toList();

    groups.sort((a, b) {
      final dateA = DateFormat('dd MMM yyyy').parse(a.monthYear);
      final dateB = DateFormat('dd MMM yyyy').parse(b.monthYear);
      return dateB.compareTo(dateA);
    });

    return groups;
  }

  @override
  Future<List<VpTransaction>> getMyVpTransactions({
    required List<String> types,
    DateTime? startDate,
    DateTime? endDate,
    int pageNo = 1,
    int pageSize = 10,
  }) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.vpTransactions}/$pageNo/$pageSize",
      parameters: {
        "types": types,
        "startDate": startDate == null
            ? null
            : DateFormat('yyyy-MM-dd').format(startDate),
        "endDate": endDate == null
            ? null
            : DateFormat('yyyy-MM-dd').format(endDate),
      },
    );

    // Step 1: Parse JSON into domain objects
    final transactions = (response as List)
        .map((data) => VpTransactionJson.fromJson(data).toDomain())
        .toList();

    return transactions;
  }

  @override
  Future<TermAndCondition> getTermsAndCondition(int version) async {
    var response = await networkRepository.sendRequest(
      "${APIEndpoint.termsAndConditions}/$version",
    );
    return TermAndConditionJson.fromJson(response).toDomain();
  }

  @override
  Future<int> getTermsAndConditionLatestVersion() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.termsAndConditionsLatestVersion,
    );
    return TermAndConditionJson.fromJson(response).toDomain().version ?? 0;
  }

  @override
  Future<PrivacyPolicy> getPrivacyPolicy() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.privacyPolicy,
    );
    return PrivacyPolicyJson.fromJson(response).toDomain();
  }

  @override
  Future<void> sendOTP({required String phoneNumber}) async {
    if (!phoneNumber.contains("+")) {
      phoneNumber = "+$phoneNumber";
    }
    await networkRepository.sendRequest(
      APIEndpoint.sendOTP,
      mode: NetworkRequestMode.post,
      body: {"phoneNumber": phoneNumber},
    );
  }

  @override
  Future<void> verifyOTP({
    required String otp,
    required String phoneNumber,
  }) async {
    if (!phoneNumber.contains("+")) {
      phoneNumber = "+$phoneNumber";
    }
    await networkRepository.sendRequest(
      APIEndpoint.verifyOTP,
      mode: NetworkRequestMode.post,
      body: {"phoneNumber": phoneNumber, "code": otp},
    );
  }

  @override
  Future<bool> getCometChatUser() async {
    try {
      ApiResponse apiResponse =
          await networkRepository.sendRequest(
                APIEndpoint.cometChatUser,
                returnFullResponse: true,
              )
              as ApiResponse;

      return apiResponse.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<CometChatUser> loginCometChat() async {
    var apiResponse = await networkRepository.sendRequest(
      APIEndpoint.loginCometChatUser,
      mode: NetworkRequestMode.post,
    );
    return CometChatUserJson.fromJson(apiResponse['data']).toDomain();
  }

  @override
  Future<bool> createCometChatUser() async {
    ApiResponse apiResponse =
        await networkRepository.sendRequest(
              APIEndpoint.cometChatUser,
              mode: NetworkRequestMode.post,
            )
            as ApiResponse;
    return apiResponse.statusCode == 200;
  }

  @override
  Future<List<BankListEntity>> getBankAccountList({
    int pageNo = 1,
    int pageSize = 10,
  }) async {
    var response = await networkRepository.sendRequest(
      '${APIEndpoint.bankAccountList}/$pageNo/$pageSize/createdAt/desc',
    );

    final data = response['data'] as List<dynamic>;

    return data.map((json) => BankItemJson.fromJson(json).toDomain()).toList();
  }

  @override
  Future<List<BankOptionsEntity>> getBankOptionsList() async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.bankAccountOptions,
    );

    final data = response['data']['bankOptions'] as List<dynamic>;

    return data
        .map((json) => BankOptionsJson.fromJson(json).toDomain())
        .toList();
  }

  @override
  Future<void> addNewBankAccount({
    required String bankId,
    required String accountName,
    required String accountNo,
    required bool primary,
  }) async {
    await networkRepository.sendRequest(
      APIEndpoint.bankUrl,
      mode: NetworkRequestMode.post,
      body: {
        "bankId": bankId,
        "accountName": accountName,
        "accountNo": accountNo,
        "primary": primary,
      },
    );
  }

  @override
  Future<BankDetailsEntity> getBankDetails({required String bankId}) async {
    var response = await networkRepository.sendRequest(
      '${APIEndpoint.bankUrl}/$bankId',
    );

    return BankDetailsJson.fromJson(response['data']).toDomain();
  }

  @override
  Future<bool> updateBankDetails({
    required String id,
    required String bankId,
    required String accountName,
    required String accountNo,
    required bool primary,
  }) async {
    var response = await networkRepository.sendRequest(
      '${APIEndpoint.bankUrl}/$id',
      mode: NetworkRequestMode.put,
      body: {
        "bankId": bankId,
        "accountName": accountName,
        "accountNo": accountNo,
        "primary": primary,
      },
    );

    return response['data'] == 'true';
  }

  @override
  Future<bool> updateBankStatus({
    required String bankId,
    required String status,
  }) async {
    var response = await networkRepository.sendRequest(
      '${APIEndpoint.bankUrl}/$bankId/status',
      mode: NetworkRequestMode.patch,
      body: {"status": status},
    );

    return response['data'] == 'true';
  }

  @override
  Future<List<WalletTransactionList>> getWalletTransactionList({
    int pageNo = 1,
    int pageSize = 10,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.walletTransactionList}/$pageNo/$pageSize/createdAt/desc',
      parameters: {
        'createdStartAt': startDate == null
            ? null
            : DateFormat('yyyy-MM-dd').format(startDate),
        'createdEndAt': endDate == null
            ? null
            : DateFormat('yyyy-MM-dd').format(endDate),
      },
    );

    final data = response['data'] as List<dynamic>;

    final filtered = data
        .where((json) => !(json['type'] == 'payout' && json['status'] == 2))
        .map((json) => WalletTransactionJson.fromJson(json).toDomain())
        .toList();

    return filtered;
  }

  @override
  Future<WalletBalanceEntity> getWalletBalance({
    int pageNo = 1,
    int pageSize = 10,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.walletTransactionList}/$pageNo/$pageSize/createdAt/desc',
    );

    final wallets = (response['meta']['wallets'] as List?) ?? [];

    final withdrawableWallet = wallets.cast<Map<String, dynamic>>().firstWhere(
      (json) => json['type'] == 'payout_withdrawable',
      orElse: () => <String, dynamic>{},
    );

    return WalletBalanceJson.fromJson(withdrawableWallet).toDomain();
  }

  @override
  Future<WalletTransactionDetails> getWalletTransactionDetails({
    required String id,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.transactionUrl}/$id',
    );

    final data = response['data'];

    return WalletTransactionDetailsJson.fromJson(data).toDomain();
  }

  @override
  Future<List<WalletBankListEntity>> getWalletBankList({
    int pageNo = 1,
    int pageSize = 10,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.walletTransactionList}/$pageNo/$pageSize/createdAt/desc',
    );

    final options =
        (response['meta']?['options']?['bankAccountOptions'] as List?) ?? [];

    return options
        .map((e) => WalletBankListJson.fromJson(e).toDomain())
        .toList();
  }

  @override
  Future<String> getWalletTransactionReport({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.exportWalletReport,
      parameters: {
        'dateTo': DateFormat('yyyy-MM-dd').format(startDate),
        'dateFrom': DateFormat('yyyy-MM-dd').format(endDate),
        'exportType': 'excel',
      },
    );

    return response['data'];
  }

  @override
  Future<WithdrawWalletEntity> postWithdrawTransaction({
    required String amount,
    required String bankAccountId,
  }) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.transactionUrl,
      mode: NetworkRequestMode.post,
      body: {
        'amount': amount,
        'bankAccountId': bankAccountId,
        'type': 'withdrawal',
      },
    );

    final data = response['data'];

    return WithdrawWalletJson.fromJson(data).toDomain();
  }

  @override
  Future<CreateAdHocClassEntity> createAdHocClass({
    required CreateAdHocReqParam body,
  }) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.createAdHocClass,
      body: body.toJson(),
      mode: NetworkRequestMode.post,
    );

    final data = response['data'];
    return CreateAdHocClassJson.fromJson(data).toDomain();
  }

  @override
  Future<List<AdHocStudioEntity>> searchAdHocStudio() async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.adHocStudio,
    );

    final data = response['data'] as List<dynamic>;

    return data
        .map((json) => AdHocStudioJson.fromJson(json).toDomain())
        .toList();
  }

  @override
  Future<List<SearchAdHocSlotEntity>> searchAdHocSlot({
    required String date,
    required String studioId,
    required String totalMember,
    required String time,
  }) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.adHocSearchSlot,
      parameters: {
        'date': date.getDateForAPIBody, // 2025-08-27
        'time': time, // 10:00
        'studioId': studioId,
        'slots': totalMember,
      },
    );

    final data = response['data']['slots'] as List<dynamic>;

    return data
        .map((json) => SearchAdHocSlotJson.fromJson(json).toDomain())
        .toList();
  }

  @override
  Future<AdHocMemberEntity> searchAdHocMember({required String email}) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.adHocSearchMember,
      body: {'email': email},
      mode: NetworkRequestMode.post,
    );

    final data = response['data'];
    return AdHocMemberJson.fromJson(data).toDomain();
  }

  @override
  Future<MemberAdHocInviteEntity> getMemberAdHocInviteDetails({
    required String bookingId,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.adHocUrl}/$bookingId',
    );

    final data = response['event'];
    final dto = MemberAdHocInviteJson.fromJson(data);
    return MemberAdHocInviteEntity(
      id: dto.id ?? '',
      studioId: dto.studioId ?? '',
      type: dto.type ?? '',
      gpClassType: dto.gpClassType ?? '',
      gpClassLinkId: dto.gpClassLinkId ?? '',
      bookingRefNo: dto.bookingRefNo ?? '',
      bookingStatus: dto.bookingStatus ?? '',
      paymentReqId: dto.paymentReqId ?? '',
      bookingFees: BookingFeesEntity(
        currency: dto.bookingFees?.currency ?? '',
        amount: dto.bookingFees?.totalCredits ?? '0',
      ),
      promoCode: dto.promoCode ?? '',
      name: dto.name ?? '',
      internalRemarks: dto.internalRemarks ?? '',
      countryCode: dto.countryCode ?? '',
      timezone: dto.timezone ?? '',
      startDate: dto.startDate ?? '',
      startTime: dto.startTime ?? ''.to12HourTime(),
      endDate: dto.endDate ?? '',
      endTime: dto.endTime ?? ''.to12HourTime(),
      isFullDay: dto.isFullDay ?? false,
      equipmentId: dto.equipmentId ?? '',
      instructorId: dto.instructorId ?? '',
      memberId: dto.memberId ?? '',
      cancelled: dto.cancelled ?? false,
      cancelledAt: dto.cancelledAt ?? '',
      cancelledById: dto.cancelledById ?? '',
      cancelReason: dto.cancelReason ?? '',
      cancelledWithRefund: dto.cancelledWithRefund ?? false,
      reinvitationSent: dto.reinvitationSent ?? false,
      instrNoShow: dto.instrNoShow ?? false,
      instrNoShowAt: dto.instrNoShowAt ?? '',
      instrNoShowById: dto.instrNoShowById ?? '',
      instrNoShowRemarks: dto.instrNoShowRemarks ?? '',
      studio: StudioEntity(
        id: dto.studio?.id ?? '',
        name: dto.studio?.name ?? '',
        location: dto.studio?.address ?? '',
      ),
      equipment: EquipmentMemberEntity(
        id: dto.equipment?.code ?? '',
        name: dto.equipment?.name ?? '',
        privacy: dto.equipment?.privacy ?? false,
      ),
      member: MemberEntity(id: '', name: dto.member?.fullName ?? '', email: ''),
      session: SessionEntity(
        id: dto.session?.bookingId ?? '',
        title: '',
        description: '',
      ),
      groupClass: GroupClassEntity(
        id: dto.groupClass?.id ?? '',
        title: dto.groupClass?.name ?? '',
        instructorId: dto.groupClass?.instructorId ?? '',
        instructorPrice: dto.groupClass?.instructorPrice ?? '',
        studioId: dto.groupClass?.studioId ?? '',
        maxMemberCt: (dto.groupClass?.maxMemberCt ?? 0).toInt(),
        remarks: dto.groupClass?.remark ?? '',
      ),
      instructor: AdHocInstructorEntity(
        fullName: dto.instructor?.fullName ?? '',
        pictures: dto.instructor?.pictures ?? [],
      ),
    );
  }

  @override
  Future<bool> acceptAdHocInvite({required String bookingId}) async {
    ApiResponse apiResponse =
        await networkRepository.sendRequest(
              '${APIEndpoint.acceptAdHocClass}/$bookingId',
              mode: NetworkRequestMode.post,
              returnFullResponse: true,
            )
            as ApiResponse;
    return apiResponse.statusCode == 200;
  }

  @override
  Future<bool> declineAdHocInvite({required String bookingId}) async {
    ApiResponse apiResponse =
        await networkRepository.sendRequest(
              '${APIEndpoint.rejectAdHocClass}/$bookingId',
              mode: NetworkRequestMode.post,
              returnFullResponse: true,
            )
            as ApiResponse;

    return apiResponse.statusCode == 200;
  }

  @override
  Future<bool> cancelAdHocClass({
    required String bookingId,
    required String token,
    required String reason,
  }) async {
    ApiResponse apiResponse =
        await networkRepository.sendRequest(
              APIEndpoint.memberCancelAdHocClass.replaceAll('#', bookingId),
              mode: NetworkRequestMode.post,
              returnFullResponse: true,
              body: {'reason': reason, 'token': token},
            )
            as ApiResponse;

    return apiResponse.statusCode == 200;
  }

  @override
  Future<bool> instructorCancelAdHocClass({
    required String bookingId,
    required String reason,
  }) async {
    ApiResponse apiResponse =
        await networkRepository.sendRequest(
              APIEndpoint.instructorCancelAdHocClass.replaceAll('#', bookingId),
              mode: NetworkRequestMode.post,
              returnFullResponse: true,
              body: {'reason': reason},
            )
            as ApiResponse;

    return apiResponse.statusCode == 200;
  }

  @override
  Future<bool> instructorResendInvitation({required String bookingId}) async {
    ApiResponse apiResponse =
        await networkRepository.sendRequest(
              '${APIEndpoint.resendInvitation}/$bookingId',
              mode: NetworkRequestMode.post,
              returnFullResponse: true,
            )
            as ApiResponse;

    return apiResponse.statusCode == 200;
  }

  @override
  Future<ExclusiveStudioListEntity> getExclusiveStudioList() async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.exclusiveStudioUrl,
    );

    final data = response['data'];
    return ExclusiveStudioListJson.fromJson(data).toDomain();
  }

  @override
  Future<void> getExclusiveStudioDetails({required String studioId}) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.exclusiveStudioUrl}/studioId',
    );

    return response;
  }

  @override
  Future<void> acceptExclusiveStudio({required String studioId}) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.acceptExclusiveInvite.replaceAll('#', studioId),
      mode: NetworkRequestMode.post,
    );

    return response;
  }

  @override
  Future<void> rejectExclusiveStudio({required String studioId}) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.rejectExclusiveInvite.replaceAll('#', studioId),
      mode: NetworkRequestMode.post,
    );

    return response;
  }

  @override
  Future<void> requestLeaveStudio({required String studioId}) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.leaveExclusiveStudio.replaceAll('#', studioId),
      mode: NetworkRequestMode.post,
    );

    return response;
  }

  @override
  Future<SearchBookingGroupClassEntity> searchBookingGroupClass({
    required BookingReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.searchGroupClassSlot,
      parameters: param.toJson(),
    );
    final results = response['results'];

    return SearchBookingGroupClassJson.fromJson(results).toDomain();
  }

  @override
  Future<BookingGroupClassEntity> getBookingGroupClassReview({
    required BookingReqParam param,
  }) async {
    var response = await networkRepository.sendRequest(
      APIEndpoint.getGroupClassReview,
      parameters: param.toJson(),
    );
    return BookingGroupClassSlotJson.fromJson(response['results']).toDomain();
  }

  @override
  Future<String> joinBookingGroupClass({
    required String groupClassLinkId,
    String? promoCode,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.joinGroupClass}/$groupClassLinkId',
      mode: NetworkRequestMode.post,
      body: {'groupClassLinkId': groupClassLinkId, 'promoCode': promoCode},
    );

    return response['data'];
  }

  @override
  Future<String> joinBookingWaitlist({
    required String groupClassLinkId,
    String? promoCode,
  }) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.joinWaitlist.replaceAll('#', groupClassLinkId),
      mode: NetworkRequestMode.post,
      body: {'groupClassLinkId': groupClassLinkId, 'promoCode': promoCode},
    );

    return response['data'];
  }

  @override
  Future<void> checkInBookingGroupClass({
    required String groupClassLinkId,
    required String bookingId,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.checkInGroupClass}/$groupClassLinkId/$bookingId',
      mode: NetworkRequestMode.post,
      body: {"groupClassLinkId": groupClassLinkId},
    );

    return response;
  }

  @override
  Future<void> cancelBookingGroupClass({
    required String groupClassLinkId,
    required String bookingId,
    required String token,
    required String reason,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.cancelGroupClass}/$groupClassLinkId/$bookingId',
      mode: NetworkRequestMode.post,
      body: {'reason': reason, 'token': token},
    );

    return response;
  }

  @override
  Future<List<WaitlistBookingEntity>> getWaitlist({
    int pageNo = 1,
    int pageSize = 10,
  }) async {
    final response = await networkRepository.sendRequest(
      '${APIEndpoint.getWaitlist}/$pageNo/$pageSize',
    );

    final data = response['data']['items'] as List;

    return data
        .map((json) => WaitlistBookingJson.fromJson(json).toEntity())
        .toList();
  }

  @override
  Future<WaitlistBookingEntity> getWaitlistDetail({
    required String waitlistId,
  }) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.getWaitlistDetail.replaceAll('#', waitlistId),
    );

    return WaitlistBookingJson.fromJson(response['data']).toEntity();
  }

  @override
  Future<void> acceptWaitlist({required String waitListId}) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.acceptWaitlist.replaceAll('#', waitListId),
      mode: NetworkRequestMode.post,
    );

    return response;
  }

  @override
  Future<void> rejectWaitlist({required String waitListId}) async {
    final response = await networkRepository.sendRequest(
      APIEndpoint.rejectWaitlist.replaceAll('#', waitListId),
      mode: NetworkRequestMode.post,
    );

    return response;
  }
}
