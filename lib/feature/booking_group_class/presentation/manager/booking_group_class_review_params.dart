class BookingGroupClassReviewInitialParams {
  final String groupClassLinkId;
  final String date;
  final double? lat;
  final double? lng;
  final bool? isAcceptedTerms;
  final bool? isWaitlist;

  const BookingGroupClassReviewInitialParams({
    required this.date,
    required this.groupClassLinkId,
    required this.lat,
    required this.lng,
    this.isAcceptedTerms = false,
    this.isWaitlist = false,
  });
}
