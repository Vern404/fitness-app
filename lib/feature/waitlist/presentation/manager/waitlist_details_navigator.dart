import 'package:flutter/material.dart';
import 'package:ifit/core/enums/router_path.dart';
import 'package:ifit/feature/waitlist/presentation/manager/waitlist_details_initial_params.dart';
import 'package:ifit/presentation/pages/main/booking/booking_confirmation/booking_confirmation_navigator.dart';
import 'package:ifit/presentation/pages/terms_and_conditions/terms_and_conditions_navigator.dart';
import '../../../../../core/navigation/app_navigator.dart';

class WaitlistDetailsNavigator
    with BookingConfirmationRoute, TermsAndConditionsRoute {
  WaitlistDetailsNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin WaitlistDetailsRoute {
  Future<bool?> openWaitlistDetails(
    WaitlistDetailsInitialParams initialParams,
  ) {
    return navigator.push<bool>(
      context,
      RouterUrl.waitlistDetails.path,
      initialParams,
    );
  }

  AppNavigator get navigator;

  BuildContext get context;
}
