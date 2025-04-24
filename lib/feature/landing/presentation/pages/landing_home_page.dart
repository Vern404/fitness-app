import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview/configs/constants/app_enum.dart';
import 'package:interview/feature/landing/presentation/widgets/landing_app_bar.dart';
import 'package:interview/feature/landing/presentation/widgets/landing_home_booking_list.dart';
import 'package:interview/feature/landing/provider.dart';

import '../../../../configs/constants/app_colors.dart';

class LandingHomePage extends ConsumerStatefulWidget {
  const LandingHomePage({super.key});

  @override
  ConsumerState<LandingHomePage> createState() => _LandingHomePageState();
}

class _LandingHomePageState extends ConsumerState<LandingHomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(landingHomeNotifierProvider.notifier).loadClientBookings();
      ref.read(landingHomeNotifierProvider.notifier).loadUpcomingBookings();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [LandingAppBar(), _buildContent()]),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Consumer(
            builder: (context, ref, _) {
              final booking =
                  ref.watch(landingHomeNotifierProvider).upcomingBookings;

              if (booking.isEmpty) {
                return const SizedBox.shrink();
              }
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.lightOrange,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.access_time, color: AppColors.orange2),
                      const Text(
                        'You have a booking pending feedback.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Consumer(
            builder: (context, ref, _) {
              final state = ref.watch(landingHomeNotifierProvider).clientState;

              if (state == BaseState.loading) {
                return const CircularProgressIndicator();
              } else if (state == BaseState.loaded) {
                return LandingHomeBookingList(isClient: true);
              } else if (state == BaseState.failure) {
                return const Text('Failed to load client data');
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          SizedBox(height: 30),
          Consumer(
            builder: (context, ref, _) {
              final state =
                  ref.watch(landingHomeNotifierProvider).upcomingState;
              if (state == BaseState.loading) {
                return const CircularProgressIndicator();
              } else if (state == BaseState.loaded) {
                return LandingHomeBookingList(isClient: false);
              } else if (state == BaseState.failure) {
                return const Text('Failed to load upcoming data');
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          SizedBox(height: 30),
          _commonShowcase(title: 'Browse Studio', isStudio: true),
          _commonShowcase(title: 'Browse instructor', isStudio: false),
        ],
      ),
    );
  }

  Widget _commonShowcase({required String title, required bool isStudio}) {
    return InkWell(
      onTap: () {
        if (isStudio) {
          // Navigate to studio page
        } else {
          // Navigate to instructor page
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://prepperformancecenter.com/wp-content/uploads/2024/07/pilates-1.webp',
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
