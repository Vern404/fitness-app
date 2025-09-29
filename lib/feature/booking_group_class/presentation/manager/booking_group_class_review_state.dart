import 'package:equatable/equatable.dart';
import 'package:ifit/core/enums/common_error_type.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity.dart';

class BookingGroupClassReviewState extends Equatable {
  final bool loading;
  final bool makingPayment;
  final BookingGroupClassEntity? bookingGroupClassReview;
  final bool agreeWithTerms;
  final TextFieldError redeemError;
  final bool redeemStatus;

  const BookingGroupClassReviewState({
    required this.loading,
    required this.makingPayment,
    this.bookingGroupClassReview,
    required this.agreeWithTerms,
    required this.redeemError,
    required this.redeemStatus,
  });

  factory BookingGroupClassReviewState.initial() =>
      BookingGroupClassReviewState(
        loading: false,
        makingPayment: false,
        agreeWithTerms: false,
        redeemError: TextFieldError.none,
        redeemStatus: false,
      );

  BookingGroupClassReviewState copyWith({
    bool? loading,
    bool? makingPayment,
    BookingGroupClassEntity? bookingGroupClassReview,
    bool? agreeWithTerms,
    TextFieldError? redeemError,
    bool? redeemStatus,
  }) => BookingGroupClassReviewState(
    loading: loading ?? this.loading,
    makingPayment: makingPayment ?? this.makingPayment,
    bookingGroupClassReview:
        bookingGroupClassReview ?? this.bookingGroupClassReview,
    agreeWithTerms: agreeWithTerms ?? this.agreeWithTerms,
    redeemError: redeemError ?? this.redeemError,
    redeemStatus: redeemStatus ?? this.redeemStatus,
  );

  @override
  List<Object?> get props => [
    makingPayment,
    loading,
    bookingGroupClassReview,
    agreeWithTerms,
    redeemError,
    redeemStatus,
  ];
}
