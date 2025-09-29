import 'package:flutter/material.dart';
import 'package:ifit/core/enums/router_path.dart';
import 'package:ifit/core/navigation/app_navigator.dart';
import 'package:ifit/feature/booking_group_class/presentation/pages/booking_group_class_details_page.dart';

class BookingGroupClassDetailNavigator {
  BookingGroupClassDetailNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin BookingGroupClassDetailRoute {
  openBookingGroupClassDetails(BookingGroupClassDetailsParams params) {
    navigator.push(context, RouterUrl.bookingGroupClassDetails.path, params);
  }

  AppNavigator get navigator;

  BuildContext get context;
}
