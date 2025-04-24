import 'package:equatable/equatable.dart';

final class ClientBookingEntity extends Equatable {
  const ClientBookingEntity({
    required this.name,
    required this.programme,
    required this.location,
  });

  final String name;
  final String programme;
  final String location;

  @override
  List<Object?> get props => [name, programme, location];
}