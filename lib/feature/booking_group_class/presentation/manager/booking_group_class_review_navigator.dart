import 'package:flutter/material.dart';
import 'package:ifit/core/enums/router_path.dart';
import 'package:ifit/feature/booking_group_class/presentation/manager/booking_group_class_review_params.dart';
import 'package:ifit/presentation/pages/main/booking/booking_confirmation/booking_confirmation_navigator.dart';
import 'package:ifit/presentation/pages/main/my_vp/top_up/top_up_navigator.dart';
import 'package:ifit/presentation/pages/terms_and_conditions/terms_and_conditions_navigator.dart';
import '../../../../../core/navigation/app_navigator.dart';

class BookingGroupClassReviewNavigator
    with BookingConfirmationRoute, TopUpRoute, TermsAndConditionsRoute {
  BookingGroupClassReviewNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin BookingGroupClassReviewRoute {
  openBookingGroupClassReview(
    BookingGroupClassReviewInitialParams initialParams,
  ) {
    navigator.push(
      context,
      RouterUrl.bookingGroupClassReview.path,
      initialParams,
    );
  }

  AppNavigator get navigator;

  BuildContext get context;
}
