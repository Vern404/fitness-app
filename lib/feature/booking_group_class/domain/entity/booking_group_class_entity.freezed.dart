// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_group_class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchBookingGroupClassEntity {

 List<BookingGroupClassEntity>? get slots; String? get nextAvailableDate;
/// Create a copy of SearchBookingGroupClassEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchBookingGroupClassEntityCopyWith<SearchBookingGroupClassEntity> get copyWith => _$SearchBookingGroupClassEntityCopyWithImpl<SearchBookingGroupClassEntity>(this as SearchBookingGroupClassEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchBookingGroupClassEntity&&const DeepCollectionEquality().equals(other.slots, slots)&&(identical(other.nextAvailableDate, nextAvailableDate) || other.nextAvailableDate == nextAvailableDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(slots),nextAvailableDate);

@override
String toString() {
  return 'SearchBookingGroupClassEntity(slots: $slots, nextAvailableDate: $nextAvailableDate)';
}


}

/// @nodoc
abstract mixin class $SearchBookingGroupClassEntityCopyWith<$Res>  {
  factory $SearchBookingGroupClassEntityCopyWith(SearchBookingGroupClassEntity value, $Res Function(SearchBookingGroupClassEntity) _then) = _$SearchBookingGroupClassEntityCopyWithImpl;
@useResult
$Res call({
 List<BookingGroupClassEntity>? slots, String? nextAvailableDate
});




}
/// @nodoc
class _$SearchBookingGroupClassEntityCopyWithImpl<$Res>
    implements $SearchBookingGroupClassEntityCopyWith<$Res> {
  _$SearchBookingGroupClassEntityCopyWithImpl(this._self, this._then);

  final SearchBookingGroupClassEntity _self;
  final $Res Function(SearchBookingGroupClassEntity) _then;

/// Create a copy of SearchBookingGroupClassEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slots = freezed,Object? nextAvailableDate = freezed,}) {
  return _then(SearchBookingGroupClassEntity(
slots: freezed == slots ? _self.slots : slots // ignore: cast_nullable_to_non_nullable
as List<BookingGroupClassEntity>?,nextAvailableDate: freezed == nextAvailableDate ? _self.nextAvailableDate : nextAvailableDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchBookingGroupClassEntity].
extension SearchBookingGroupClassEntityPatterns on SearchBookingGroupClassEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}


/// @nodoc
mixin _$BookingGroupClassEntity {

 BookingGroupClassInstructorEntity? get instructor; BookingGroupClassStudioEntity? get studio; BookingGroupClassDetailsEntity? get groupClass; List<BookingGroupClassSlotEntity>? get slots; BookingGroupClassFeesEntity? get fees;
/// Create a copy of BookingGroupClassEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingGroupClassEntityCopyWith<BookingGroupClassEntity> get copyWith => _$BookingGroupClassEntityCopyWithImpl<BookingGroupClassEntity>(this as BookingGroupClassEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingGroupClassEntity&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.studio, studio) || other.studio == studio)&&(identical(other.groupClass, groupClass) || other.groupClass == groupClass)&&const DeepCollectionEquality().equals(other.slots, slots)&&(identical(other.fees, fees) || other.fees == fees));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,instructor,studio,groupClass,const DeepCollectionEquality().hash(slots),fees);

@override
String toString() {
  return 'BookingGroupClassEntity(instructor: $instructor, studio: $studio, groupClass: $groupClass, slots: $slots, fees: $fees)';
}


}

/// @nodoc
abstract mixin class $BookingGroupClassEntityCopyWith<$Res>  {
  factory $BookingGroupClassEntityCopyWith(BookingGroupClassEntity value, $Res Function(BookingGroupClassEntity) _then) = _$BookingGroupClassEntityCopyWithImpl;
@useResult
$Res call({
 BookingGroupClassInstructorEntity? instructor, BookingGroupClassStudioEntity? studio, BookingGroupClassDetailsEntity? groupClass, List<BookingGroupClassSlotEntity>? slots, BookingGroupClassFeesEntity? fees
});




}
/// @nodoc
class _$BookingGroupClassEntityCopyWithImpl<$Res>
    implements $BookingGroupClassEntityCopyWith<$Res> {
  _$BookingGroupClassEntityCopyWithImpl(this._self, this._then);

  final BookingGroupClassEntity _self;
  final $Res Function(BookingGroupClassEntity) _then;

/// Create a copy of BookingGroupClassEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? instructor = freezed,Object? studio = freezed,Object? groupClass = freezed,Object? slots = freezed,Object? fees = freezed,}) {
  return _then(BookingGroupClassEntity(
instructor: freezed == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as BookingGroupClassInstructorEntity?,studio: freezed == studio ? _self.studio : studio // ignore: cast_nullable_to_non_nullable
as BookingGroupClassStudioEntity?,groupClass: freezed == groupClass ? _self.groupClass : groupClass // ignore: cast_nullable_to_non_nullable
as BookingGroupClassDetailsEntity?,slots: freezed == slots ? _self.slots : slots // ignore: cast_nullable_to_non_nullable
as List<BookingGroupClassSlotEntity>?,fees: freezed == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as BookingGroupClassFeesEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingGroupClassEntity].
extension BookingGroupClassEntityPatterns on BookingGroupClassEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}


/// @nodoc
mixin _$BookingGroupClassInstructorEntity {

 String? get id; String? get firebaseUid; String? get code; String? get name; String? get descr; String? get facebook; String? get instagram; String? get certifications; String? get specialisations; List<String>? get pictures; String? get registeredAt; bool? get onboarded; bool? get pendingApproval; bool? get isCompleted; bool? get notifiedComplete; String? get createdBy; bool? get deleted; String? get avgRating; int? get totalBookings; int? get totalRatingCount;
/// Create a copy of BookingGroupClassInstructorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingGroupClassInstructorEntityCopyWith<BookingGroupClassInstructorEntity> get copyWith => _$BookingGroupClassInstructorEntityCopyWithImpl<BookingGroupClassInstructorEntity>(this as BookingGroupClassInstructorEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingGroupClassInstructorEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.firebaseUid, firebaseUid) || other.firebaseUid == firebaseUid)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.descr, descr) || other.descr == descr)&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.certifications, certifications) || other.certifications == certifications)&&(identical(other.specialisations, specialisations) || other.specialisations == specialisations)&&const DeepCollectionEquality().equals(other.pictures, pictures)&&(identical(other.registeredAt, registeredAt) || other.registeredAt == registeredAt)&&(identical(other.onboarded, onboarded) || other.onboarded == onboarded)&&(identical(other.pendingApproval, pendingApproval) || other.pendingApproval == pendingApproval)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.notifiedComplete, notifiedComplete) || other.notifiedComplete == notifiedComplete)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.totalRatingCount, totalRatingCount) || other.totalRatingCount == totalRatingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firebaseUid,code,name,descr,facebook,instagram,certifications,specialisations,const DeepCollectionEquality().hash(pictures),registeredAt,onboarded,pendingApproval,isCompleted,notifiedComplete,createdBy,deleted,avgRating,totalBookings,totalRatingCount]);

@override
String toString() {
  return 'BookingGroupClassInstructorEntity(id: $id, firebaseUid: $firebaseUid, code: $code, name: $name, descr: $descr, facebook: $facebook, instagram: $instagram, certifications: $certifications, specialisations: $specialisations, pictures: $pictures, registeredAt: $registeredAt, onboarded: $onboarded, pendingApproval: $pendingApproval, isCompleted: $isCompleted, notifiedComplete: $notifiedComplete, createdBy: $createdBy, deleted: $deleted, avgRating: $avgRating, totalBookings: $totalBookings, totalRatingCount: $totalRatingCount)';
}


}

/// @nodoc
abstract mixin class $BookingGroupClassInstructorEntityCopyWith<$Res>  {
  factory $BookingGroupClassInstructorEntityCopyWith(BookingGroupClassInstructorEntity value, $Res Function(BookingGroupClassInstructorEntity) _then) = _$BookingGroupClassInstructorEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? firebaseUid, String? code, String? name, String? descr, String? facebook, String? instagram, String? certifications, String? specialisations, List<String>? pictures, String? registeredAt, bool? onboarded, bool? pendingApproval, bool? isCompleted, bool? notifiedComplete, String? createdBy, bool? deleted, String? avgRating, int? totalBookings, int? totalRatingCount
});




}
/// @nodoc
class _$BookingGroupClassInstructorEntityCopyWithImpl<$Res>
    implements $BookingGroupClassInstructorEntityCopyWith<$Res> {
  _$BookingGroupClassInstructorEntityCopyWithImpl(this._self, this._then);

  final BookingGroupClassInstructorEntity _self;
  final $Res Function(BookingGroupClassInstructorEntity) _then;

/// Create a copy of BookingGroupClassInstructorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firebaseUid = freezed,Object? code = freezed,Object? name = freezed,Object? descr = freezed,Object? facebook = freezed,Object? instagram = freezed,Object? certifications = freezed,Object? specialisations = freezed,Object? pictures = freezed,Object? registeredAt = freezed,Object? onboarded = freezed,Object? pendingApproval = freezed,Object? isCompleted = freezed,Object? notifiedComplete = freezed,Object? createdBy = freezed,Object? deleted = freezed,Object? avgRating = freezed,Object? totalBookings = freezed,Object? totalRatingCount = freezed,}) {
  return _then(BookingGroupClassInstructorEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firebaseUid: freezed == firebaseUid ? _self.firebaseUid : firebaseUid // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,descr: freezed == descr ? _self.descr : descr // ignore: cast_nullable_to_non_nullable
as String?,facebook: freezed == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String?,instagram: freezed == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as String?,specialisations: freezed == specialisations ? _self.specialisations : specialisations // ignore: cast_nullable_to_non_nullable
as String?,pictures: freezed == pictures ? _self.pictures : pictures // ignore: cast_nullable_to_non_nullable
as List<String>?,registeredAt: freezed == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as String?,onboarded: freezed == onboarded ? _self.onboarded : onboarded // ignore: cast_nullable_to_non_nullable
as bool?,pendingApproval: freezed == pendingApproval ? _self.pendingApproval : pendingApproval // ignore: cast_nullable_to_non_nullable
as bool?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,notifiedComplete: freezed == notifiedComplete ? _self.notifiedComplete : notifiedComplete // ignore: cast_nullable_to_non_nullable
as bool?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as String?,totalBookings: freezed == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int?,totalRatingCount: freezed == totalRatingCount ? _self.totalRatingCount : totalRatingCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingGroupClassInstructorEntity].
extension BookingGroupClassInstructorEntityPatterns on BookingGroupClassInstructorEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}


/// @nodoc
mixin _$BookingGroupClassStudioEntity {

 String? get id; String? get name; String? get currency; String? get countryCode; String? get timezone; String? get descr; String? get contactNo; String? get email; String? get address; String? get placeId; String? get geocode; num? get distance; bool? get fav; List<String>? get pictures; Map<String, dynamic>? get socialMedia; num? get avgRating; num? get totalRatingCount; List<String>? get equipments;
/// Create a copy of BookingGroupClassStudioEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingGroupClassStudioEntityCopyWith<BookingGroupClassStudioEntity> get copyWith => _$BookingGroupClassStudioEntityCopyWithImpl<BookingGroupClassStudioEntity>(this as BookingGroupClassStudioEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingGroupClassStudioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.descr, descr) || other.descr == descr)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.geocode, geocode) || other.geocode == geocode)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.fav, fav) || other.fav == fav)&&const DeepCollectionEquality().equals(other.pictures, pictures)&&const DeepCollectionEquality().equals(other.socialMedia, socialMedia)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.totalRatingCount, totalRatingCount) || other.totalRatingCount == totalRatingCount)&&const DeepCollectionEquality().equals(other.equipments, equipments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,currency,countryCode,timezone,descr,contactNo,email,address,placeId,geocode,distance,fav,const DeepCollectionEquality().hash(pictures),const DeepCollectionEquality().hash(socialMedia),avgRating,totalRatingCount,const DeepCollectionEquality().hash(equipments));

@override
String toString() {
  return 'BookingGroupClassStudioEntity(id: $id, name: $name, currency: $currency, countryCode: $countryCode, timezone: $timezone, descr: $descr, contactNo: $contactNo, email: $email, address: $address, placeId: $placeId, geocode: $geocode, distance: $distance, fav: $fav, pictures: $pictures, socialMedia: $socialMedia, avgRating: $avgRating, totalRatingCount: $totalRatingCount, equipments: $equipments)';
}


}

/// @nodoc
abstract mixin class $BookingGroupClassStudioEntityCopyWith<$Res>  {
  factory $BookingGroupClassStudioEntityCopyWith(BookingGroupClassStudioEntity value, $Res Function(BookingGroupClassStudioEntity) _then) = _$BookingGroupClassStudioEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? currency, String? countryCode, String? timezone, String? descr, String? contactNo, String? email, String? address, String? placeId, String? geocode, num? distance, bool? fav, List<String>? pictures, Map<String, dynamic>? socialMedia, num? avgRating, num? totalRatingCount, List<String>? equipments
});




}
/// @nodoc
class _$BookingGroupClassStudioEntityCopyWithImpl<$Res>
    implements $BookingGroupClassStudioEntityCopyWith<$Res> {
  _$BookingGroupClassStudioEntityCopyWithImpl(this._self, this._then);

  final BookingGroupClassStudioEntity _self;
  final $Res Function(BookingGroupClassStudioEntity) _then;

/// Create a copy of BookingGroupClassStudioEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? currency = freezed,Object? countryCode = freezed,Object? timezone = freezed,Object? descr = freezed,Object? contactNo = freezed,Object? email = freezed,Object? address = freezed,Object? placeId = freezed,Object? geocode = freezed,Object? distance = freezed,Object? fav = freezed,Object? pictures = freezed,Object? socialMedia = freezed,Object? avgRating = freezed,Object? totalRatingCount = freezed,Object? equipments = freezed,}) {
  return _then(BookingGroupClassStudioEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,descr: freezed == descr ? _self.descr : descr // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,geocode: freezed == geocode ? _self.geocode : geocode // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as num?,fav: freezed == fav ? _self.fav : fav // ignore: cast_nullable_to_non_nullable
as bool?,pictures: freezed == pictures ? _self.pictures : pictures // ignore: cast_nullable_to_non_nullable
as List<String>?,socialMedia: freezed == socialMedia ? _self.socialMedia : socialMedia // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as num?,totalRatingCount: freezed == totalRatingCount ? _self.totalRatingCount : totalRatingCount // ignore: cast_nullable_to_non_nullable
as num?,equipments: freezed == equipments ? _self.equipments : equipments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingGroupClassStudioEntity].
extension BookingGroupClassStudioEntityPatterns on BookingGroupClassStudioEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}


/// @nodoc
mixin _$BookingGroupClassDetailsEntity {

 String? get gpClassLinkId; String? get name; String? get intensity; bool? get autoCancel; String? get description; String? get preparation; int? get minParticipants; int? get maxParticipants; String? get studioPrice; bool? get active; String? get studioPriceInCredits;
/// Create a copy of BookingGroupClassDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingGroupClassDetailsEntityCopyWith<BookingGroupClassDetailsEntity> get copyWith => _$BookingGroupClassDetailsEntityCopyWithImpl<BookingGroupClassDetailsEntity>(this as BookingGroupClassDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingGroupClassDetailsEntity&&(identical(other.gpClassLinkId, gpClassLinkId) || other.gpClassLinkId == gpClassLinkId)&&(identical(other.name, name) || other.name == name)&&(identical(other.intensity, intensity) || other.intensity == intensity)&&(identical(other.autoCancel, autoCancel) || other.autoCancel == autoCancel)&&(identical(other.description, description) || other.description == description)&&(identical(other.preparation, preparation) || other.preparation == preparation)&&(identical(other.minParticipants, minParticipants) || other.minParticipants == minParticipants)&&(identical(other.maxParticipants, maxParticipants) || other.maxParticipants == maxParticipants)&&(identical(other.studioPrice, studioPrice) || other.studioPrice == studioPrice)&&(identical(other.active, active) || other.active == active)&&(identical(other.studioPriceInCredits, studioPriceInCredits) || other.studioPriceInCredits == studioPriceInCredits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gpClassLinkId,name,intensity,autoCancel,description,preparation,minParticipants,maxParticipants,studioPrice,active,studioPriceInCredits);

@override
String toString() {
  return 'BookingGroupClassDetailsEntity(gpClassLinkId: $gpClassLinkId, name: $name, intensity: $intensity, autoCancel: $autoCancel, description: $description, preparation: $preparation, minParticipants: $minParticipants, maxParticipants: $maxParticipants, studioPrice: $studioPrice, active: $active, studioPriceInCredits: $studioPriceInCredits)';
}


}

/// @nodoc
abstract mixin class $BookingGroupClassDetailsEntityCopyWith<$Res>  {
  factory $BookingGroupClassDetailsEntityCopyWith(BookingGroupClassDetailsEntity value, $Res Function(BookingGroupClassDetailsEntity) _then) = _$BookingGroupClassDetailsEntityCopyWithImpl;
@useResult
$Res call({
 String? gpClassLinkId, String? name, String? intensity, bool? autoCancel, String? description, String? preparation, int? minParticipants, int? maxParticipants, String? studioPrice, bool? active, String? studioPriceInCredits
});




}
/// @nodoc
class _$BookingGroupClassDetailsEntityCopyWithImpl<$Res>
    implements $BookingGroupClassDetailsEntityCopyWith<$Res> {
  _$BookingGroupClassDetailsEntityCopyWithImpl(this._self, this._then);

  final BookingGroupClassDetailsEntity _self;
  final $Res Function(BookingGroupClassDetailsEntity) _then;

/// Create a copy of BookingGroupClassDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gpClassLinkId = freezed,Object? name = freezed,Object? intensity = freezed,Object? autoCancel = freezed,Object? description = freezed,Object? preparation = freezed,Object? minParticipants = freezed,Object? maxParticipants = freezed,Object? studioPrice = freezed,Object? active = freezed,Object? studioPriceInCredits = freezed,}) {
  return _then(BookingGroupClassDetailsEntity(
gpClassLinkId: freezed == gpClassLinkId ? _self.gpClassLinkId : gpClassLinkId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,intensity: freezed == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as String?,autoCancel: freezed == autoCancel ? _self.autoCancel : autoCancel // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,preparation: freezed == preparation ? _self.preparation : preparation // ignore: cast_nullable_to_non_nullable
as String?,minParticipants: freezed == minParticipants ? _self.minParticipants : minParticipants // ignore: cast_nullable_to_non_nullable
as int?,maxParticipants: freezed == maxParticipants ? _self.maxParticipants : maxParticipants // ignore: cast_nullable_to_non_nullable
as int?,studioPrice: freezed == studioPrice ? _self.studioPrice : studioPrice // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,studioPriceInCredits: freezed == studioPriceInCredits ? _self.studioPriceInCredits : studioPriceInCredits // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingGroupClassDetailsEntity].
extension BookingGroupClassDetailsEntityPatterns on BookingGroupClassDetailsEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}


/// @nodoc
mixin _$BookingGroupClassSlotEntity {

 String? get groupClassId; String? get date; String? get startTime; String? get endTime; int? get totalBookings; int? get totalBooked;
/// Create a copy of BookingGroupClassSlotEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingGroupClassSlotEntityCopyWith<BookingGroupClassSlotEntity> get copyWith => _$BookingGroupClassSlotEntityCopyWithImpl<BookingGroupClassSlotEntity>(this as BookingGroupClassSlotEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingGroupClassSlotEntity&&(identical(other.groupClassId, groupClassId) || other.groupClassId == groupClassId)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.totalBooked, totalBooked) || other.totalBooked == totalBooked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupClassId,date,startTime,endTime,totalBookings,totalBooked);

@override
String toString() {
  return 'BookingGroupClassSlotEntity(groupClassId: $groupClassId, date: $date, startTime: $startTime, endTime: $endTime, totalBookings: $totalBookings, totalBooked: $totalBooked)';
}


}

/// @nodoc
abstract mixin class $BookingGroupClassSlotEntityCopyWith<$Res>  {
  factory $BookingGroupClassSlotEntityCopyWith(BookingGroupClassSlotEntity value, $Res Function(BookingGroupClassSlotEntity) _then) = _$BookingGroupClassSlotEntityCopyWithImpl;
@useResult
$Res call({
 String? groupClassId, String? date, String? startTime, String? endTime, int? totalBookings, int? totalBooked
});




}
/// @nodoc
class _$BookingGroupClassSlotEntityCopyWithImpl<$Res>
    implements $BookingGroupClassSlotEntityCopyWith<$Res> {
  _$BookingGroupClassSlotEntityCopyWithImpl(this._self, this._then);

  final BookingGroupClassSlotEntity _self;
  final $Res Function(BookingGroupClassSlotEntity) _then;

/// Create a copy of BookingGroupClassSlotEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupClassId = freezed,Object? date = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? totalBookings = freezed,Object? totalBooked = freezed,}) {
  return _then(BookingGroupClassSlotEntity(
groupClassId: freezed == groupClassId ? _self.groupClassId : groupClassId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,totalBookings: freezed == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int?,totalBooked: freezed == totalBooked ? _self.totalBooked : totalBooked // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingGroupClassSlotEntity].
extension BookingGroupClassSlotEntityPatterns on BookingGroupClassSlotEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}


/// @nodoc
mixin _$BookingGroupClassFeesEntity {

 List<BookingGroupClassFeeItemEntity>? get items; String? get total; String? get totalCredits; String? get currency;
/// Create a copy of BookingGroupClassFeesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingGroupClassFeesEntityCopyWith<BookingGroupClassFeesEntity> get copyWith => _$BookingGroupClassFeesEntityCopyWithImpl<BookingGroupClassFeesEntity>(this as BookingGroupClassFeesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingGroupClassFeesEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalCredits, totalCredits) || other.totalCredits == totalCredits)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),total,totalCredits,currency);

@override
String toString() {
  return 'BookingGroupClassFeesEntity(items: $items, total: $total, totalCredits: $totalCredits, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $BookingGroupClassFeesEntityCopyWith<$Res>  {
  factory $BookingGroupClassFeesEntityCopyWith(BookingGroupClassFeesEntity value, $Res Function(BookingGroupClassFeesEntity) _then) = _$BookingGroupClassFeesEntityCopyWithImpl;
@useResult
$Res call({
 List<BookingGroupClassFeeItemEntity>? items, String? total, String? totalCredits, String? currency
});




}
/// @nodoc
class _$BookingGroupClassFeesEntityCopyWithImpl<$Res>
    implements $BookingGroupClassFeesEntityCopyWith<$Res> {
  _$BookingGroupClassFeesEntityCopyWithImpl(this._self, this._then);

  final BookingGroupClassFeesEntity _self;
  final $Res Function(BookingGroupClassFeesEntity) _then;

/// Create a copy of BookingGroupClassFeesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,Object? total = freezed,Object? totalCredits = freezed,Object? currency = freezed,}) {
  return _then(BookingGroupClassFeesEntity(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<BookingGroupClassFeeItemEntity>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,totalCredits: freezed == totalCredits ? _self.totalCredits : totalCredits // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingGroupClassFeesEntity].
extension BookingGroupClassFeesEntityPatterns on BookingGroupClassFeesEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}


/// @nodoc
mixin _$BookingGroupClassFeeItemEntity {

 String? get name; int? get type; String? get price; String? get credit; String? get currency; String? get sign;
/// Create a copy of BookingGroupClassFeeItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingGroupClassFeeItemEntityCopyWith<BookingGroupClassFeeItemEntity> get copyWith => _$BookingGroupClassFeeItemEntityCopyWithImpl<BookingGroupClassFeeItemEntity>(this as BookingGroupClassFeeItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingGroupClassFeeItemEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price)&&(identical(other.credit, credit) || other.credit == credit)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.sign, sign) || other.sign == sign));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,price,credit,currency,sign);

@override
String toString() {
  return 'BookingGroupClassFeeItemEntity(name: $name, type: $type, price: $price, credit: $credit, currency: $currency, sign: $sign)';
}


}

/// @nodoc
abstract mixin class $BookingGroupClassFeeItemEntityCopyWith<$Res>  {
  factory $BookingGroupClassFeeItemEntityCopyWith(BookingGroupClassFeeItemEntity value, $Res Function(BookingGroupClassFeeItemEntity) _then) = _$BookingGroupClassFeeItemEntityCopyWithImpl;
@useResult
$Res call({
 String? name, int? type, String? price, String? credit, String? currency, String? sign
});




}
/// @nodoc
class _$BookingGroupClassFeeItemEntityCopyWithImpl<$Res>
    implements $BookingGroupClassFeeItemEntityCopyWith<$Res> {
  _$BookingGroupClassFeeItemEntityCopyWithImpl(this._self, this._then);

  final BookingGroupClassFeeItemEntity _self;
  final $Res Function(BookingGroupClassFeeItemEntity) _then;

/// Create a copy of BookingGroupClassFeeItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? type = freezed,Object? price = freezed,Object? credit = freezed,Object? currency = freezed,Object? sign = freezed,}) {
  return _then(BookingGroupClassFeeItemEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,credit: freezed == credit ? _self.credit : credit // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,sign: freezed == sign ? _self.sign : sign // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingGroupClassFeeItemEntity].
extension BookingGroupClassFeeItemEntityPatterns on BookingGroupClassFeeItemEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

// dart format on
