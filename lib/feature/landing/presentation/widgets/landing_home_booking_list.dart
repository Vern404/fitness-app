import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview/configs/constants/app_colors.dart';
import 'package:interview/feature/landing/provider.dart';

class LandingHomeBookingList extends ConsumerWidget {
  const LandingHomeBookingList({required this.isClient, super.key});

  final bool isClient;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(
      landingHomeNotifierProvider.select((val) => val.clientBookings),
    );

    final booking = ref.watch(
      landingHomeNotifierProvider.select((val) => val.upcomingBookings),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${isClient ? 'Upcoming Clients' : 'My Upcoming'} Bookings (${isClient ? client.length : booking.length})',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(isClient ? client.length : booking.length, (
              index,
            ) {
              return _listItem(
                context,
                name: isClient ? client[index].name : booking[index].instructor,
                location:
                    isClient ? client[index].location : booking[index].location,
                programme:
                    isClient
                        ? client[index].programme
                        : booking[index].programme,
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget _listItem(
    BuildContext context, {
    required String name,
    required String location,
    required String programme,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.lightYellow,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _iconText(name, Icons.person_2_outlined),
              const SizedBox(height: 4),
              _iconText(programme, Icons.label),
              const SizedBox(height: 4),
              _iconText(location, Icons.location_on_outlined),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconText(String text, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: AppColors.orange2),
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
