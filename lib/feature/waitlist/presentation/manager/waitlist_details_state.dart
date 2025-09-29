import 'package:equatable/equatable.dart';
import 'package:ifit/feature/waitlist/domain/entity/waitlist_details_entity.dart';

class WaitlistDetailsState extends Equatable {
  final bool loading;
  final bool makingPayment;
  final WaitlistBookingEntity? booking;
  final bool agreeWithTerms;

  const WaitlistDetailsState({
    required this.loading,
    required this.makingPayment,
    this.booking,
    required this.agreeWithTerms,
  });

  factory WaitlistDetailsState.initial() =>
      WaitlistDetailsState(
        loading: false,
        makingPayment: false,
        agreeWithTerms: false,
      );

  WaitlistDetailsState copyWith({
    bool? loading,
    bool? makingPayment,
    WaitlistBookingEntity? booking,
    bool? agreeWithTerms,
  }) => WaitlistDetailsState(
    loading: loading ?? this.loading,
    makingPayment: makingPayment ?? this.makingPayment,
    booking:
    booking ?? this.booking,
    agreeWithTerms: agreeWithTerms ?? this.agreeWithTerms,
  );

  @override
  List<Object?> get props => [
    makingPayment,
    loading,
    booking,
    agreeWithTerms,

  ];
}
