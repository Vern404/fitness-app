// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waitlist_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WaitlistBookingListEntity {

 List<WaitlistBookingEntity>? get items; num? get totalItems; num? get totalPages; num? get currentPage; num? get pageSize;
/// Create a copy of WaitlistBookingListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaitlistBookingListEntityCopyWith<WaitlistBookingListEntity> get copyWith => _$WaitlistBookingListEntityCopyWithImpl<WaitlistBookingListEntity>(this as WaitlistBookingListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaitlistBookingListEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalItems,totalPages,currentPage,pageSize);

@override
String toString() {
  return 'WaitlistBookingListEntity(items: $items, totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $WaitlistBookingListEntityCopyWith<$Res>  {
  factory $WaitlistBookingListEntityCopyWith(WaitlistBookingListEntity value, $Res Function(WaitlistBookingListEntity) _then) = _$WaitlistBookingListEntityCopyWithImpl;
@useResult
$Res call({
 List<WaitlistBookingEntity>? items, num? totalItems, num? totalPages, num? currentPage, num? pageSize
});




}
/// @nodoc
class _$WaitlistBookingListEntityCopyWithImpl<$Res>
    implements $WaitlistBookingListEntityCopyWith<$Res> {
  _$WaitlistBookingListEntityCopyWithImpl(this._self, this._then);

  final WaitlistBookingListEntity _self;
  final $Res Function(WaitlistBookingListEntity) _then;

/// Create a copy of WaitlistBookingListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,Object? totalItems = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? pageSize = freezed,}) {
  return _then(WaitlistBookingListEntity(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WaitlistBookingEntity>?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as num?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as num?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as num?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [WaitlistBookingListEntity].
extension WaitlistBookingListEntityPatterns on WaitlistBookingListEntity {
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
mixin _$WaitlistBookingEntity {

 String? get id; String? get groupClassLinkId; String? get memberId; String? get status; String? get promoCode; num? get promoAmount; String? get createdAt; String? get updatedAt; String? get createdBy; String? get updatedBy; GroupBookingEntity? get groupClass; Instructor? get instructor; WaitlistStudioEntity? get studio; GroupClassSlotEntity? get groupClassSlot; WaitlistBookingFeesEntity? get bookingFees;
/// Create a copy of WaitlistBookingEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaitlistBookingEntityCopyWith<WaitlistBookingEntity> get copyWith => _$WaitlistBookingEntityCopyWithImpl<WaitlistBookingEntity>(this as WaitlistBookingEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaitlistBookingEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.groupClassLinkId, groupClassLinkId) || other.groupClassLinkId == groupClassLinkId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.status, status) || other.status == status)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoAmount, promoAmount) || other.promoAmount == promoAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.groupClass, groupClass) || other.groupClass == groupClass)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.studio, studio) || other.studio == studio)&&(identical(other.groupClassSlot, groupClassSlot) || other.groupClassSlot == groupClassSlot)&&(identical(other.bookingFees, bookingFees) || other.bookingFees == bookingFees));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupClassLinkId,memberId,status,promoCode,promoAmount,createdAt,updatedAt,createdBy,updatedBy,groupClass,instructor,studio,groupClassSlot,bookingFees);

@override
String toString() {
  return 'WaitlistBookingEntity(id: $id, groupClassLinkId: $groupClassLinkId, memberId: $memberId, status: $status, promoCode: $promoCode, promoAmount: $promoAmount, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, groupClass: $groupClass, instructor: $instructor, studio: $studio, groupClassSlot: $groupClassSlot, bookingFees: $bookingFees)';
}


}

/// @nodoc
abstract mixin class $WaitlistBookingEntityCopyWith<$Res>  {
  factory $WaitlistBookingEntityCopyWith(WaitlistBookingEntity value, $Res Function(WaitlistBookingEntity) _then) = _$WaitlistBookingEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? groupClassLinkId, String? memberId, String? status, String? promoCode, num? promoAmount, String? createdAt, String? updatedAt, String? createdBy, String? updatedBy, GroupBookingEntity? groupClass, Instructor? instructor, WaitlistStudioEntity? studio, GroupClassSlotEntity? groupClassSlot, WaitlistBookingFeesEntity? bookingFees
});




}
/// @nodoc
class _$WaitlistBookingEntityCopyWithImpl<$Res>
    implements $WaitlistBookingEntityCopyWith<$Res> {
  _$WaitlistBookingEntityCopyWithImpl(this._self, this._then);

  final WaitlistBookingEntity _self;
  final $Res Function(WaitlistBookingEntity) _then;

/// Create a copy of WaitlistBookingEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? groupClassLinkId = freezed,Object? memberId = freezed,Object? status = freezed,Object? promoCode = freezed,Object? promoAmount = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? updatedBy = freezed,Object? groupClass = freezed,Object? instructor = freezed,Object? studio = freezed,Object? groupClassSlot = freezed,Object? bookingFees = freezed,}) {
  return _then(WaitlistBookingEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,groupClassLinkId: freezed == groupClassLinkId ? _self.groupClassLinkId : groupClassLinkId // ignore: cast_nullable_to_non_nullable
as String?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoAmount: freezed == promoAmount ? _self.promoAmount : promoAmount // ignore: cast_nullable_to_non_nullable
as num?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,groupClass: freezed == groupClass ? _self.groupClass : groupClass // ignore: cast_nullable_to_non_nullable
as GroupBookingEntity?,instructor: freezed == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as Instructor?,studio: freezed == studio ? _self.studio : studio // ignore: cast_nullable_to_non_nullable
as WaitlistStudioEntity?,groupClassSlot: freezed == groupClassSlot ? _self.groupClassSlot : groupClassSlot // ignore: cast_nullable_to_non_nullable
as GroupClassSlotEntity?,bookingFees: freezed == bookingFees ? _self.bookingFees : bookingFees // ignore: cast_nullable_to_non_nullable
as WaitlistBookingFeesEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [WaitlistBookingEntity].
extension WaitlistBookingEntityPatterns on WaitlistBookingEntity {
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
mixin _$GroupClassSlotEntity {

 String? get date; String? get startTime; String? get endTime; int? get totalBookings; int? get totalBooked;
/// Create a copy of GroupClassSlotEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupClassSlotEntityCopyWith<GroupClassSlotEntity> get copyWith => _$GroupClassSlotEntityCopyWithImpl<GroupClassSlotEntity>(this as GroupClassSlotEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupClassSlotEntity&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.totalBooked, totalBooked) || other.totalBooked == totalBooked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,startTime,endTime,totalBookings,totalBooked);

@override
String toString() {
  return 'GroupClassSlotEntity(date: $date, startTime: $startTime, endTime: $endTime, totalBookings: $totalBookings, totalBooked: $totalBooked)';
}


}

/// @nodoc
abstract mixin class $GroupClassSlotEntityCopyWith<$Res>  {
  factory $GroupClassSlotEntityCopyWith(GroupClassSlotEntity value, $Res Function(GroupClassSlotEntity) _then) = _$GroupClassSlotEntityCopyWithImpl;
@useResult
$Res call({
 String? date, String? startTime, String? endTime, int? totalBookings, int? totalBooked
});




}
/// @nodoc
class _$GroupClassSlotEntityCopyWithImpl<$Res>
    implements $GroupClassSlotEntityCopyWith<$Res> {
  _$GroupClassSlotEntityCopyWithImpl(this._self, this._then);

  final GroupClassSlotEntity _self;
  final $Res Function(GroupClassSlotEntity) _then;

/// Create a copy of GroupClassSlotEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? totalBookings = freezed,Object? totalBooked = freezed,}) {
  return _then(GroupClassSlotEntity(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,totalBookings: freezed == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int?,totalBooked: freezed == totalBooked ? _self.totalBooked : totalBooked // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupClassSlotEntity].
extension GroupClassSlotEntityPatterns on GroupClassSlotEntity {
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
mixin _$WaitlistStudioEntity {

 String? get id; String? get name; String? get descr; String? get contactNo; String? get email; String? get address; String? get placeId; double? get distance; bool? get instrLess; bool? get groupClass; bool? get fav; List<String>? get pictures; dynamic get socialMedia;// map to proper entity if you have one
 double? get avgRating; int? get totalRatingCount; dynamic get equipments;
/// Create a copy of WaitlistStudioEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaitlistStudioEntityCopyWith<WaitlistStudioEntity> get copyWith => _$WaitlistStudioEntityCopyWithImpl<WaitlistStudioEntity>(this as WaitlistStudioEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaitlistStudioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.descr, descr) || other.descr == descr)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.instrLess, instrLess) || other.instrLess == instrLess)&&(identical(other.groupClass, groupClass) || other.groupClass == groupClass)&&(identical(other.fav, fav) || other.fav == fav)&&const DeepCollectionEquality().equals(other.pictures, pictures)&&const DeepCollectionEquality().equals(other.socialMedia, socialMedia)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.totalRatingCount, totalRatingCount) || other.totalRatingCount == totalRatingCount)&&const DeepCollectionEquality().equals(other.equipments, equipments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,descr,contactNo,email,address,placeId,distance,instrLess,groupClass,fav,const DeepCollectionEquality().hash(pictures),const DeepCollectionEquality().hash(socialMedia),avgRating,totalRatingCount,const DeepCollectionEquality().hash(equipments));

@override
String toString() {
  return 'WaitlistStudioEntity(id: $id, name: $name, descr: $descr, contactNo: $contactNo, email: $email, address: $address, placeId: $placeId, distance: $distance, instrLess: $instrLess, groupClass: $groupClass, fav: $fav, pictures: $pictures, socialMedia: $socialMedia, avgRating: $avgRating, totalRatingCount: $totalRatingCount, equipments: $equipments)';
}


}

/// @nodoc
abstract mixin class $WaitlistStudioEntityCopyWith<$Res>  {
  factory $WaitlistStudioEntityCopyWith(WaitlistStudioEntity value, $Res Function(WaitlistStudioEntity) _then) = _$WaitlistStudioEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? descr, String? contactNo, String? email, String? address, String? placeId, double? distance, bool? instrLess, bool? groupClass, bool? fav, List<String>? pictures, dynamic socialMedia, double? avgRating, int? totalRatingCount, dynamic equipments
});




}
/// @nodoc
class _$WaitlistStudioEntityCopyWithImpl<$Res>
    implements $WaitlistStudioEntityCopyWith<$Res> {
  _$WaitlistStudioEntityCopyWithImpl(this._self, this._then);

  final WaitlistStudioEntity _self;
  final $Res Function(WaitlistStudioEntity) _then;

/// Create a copy of WaitlistStudioEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? descr = freezed,Object? contactNo = freezed,Object? email = freezed,Object? address = freezed,Object? placeId = freezed,Object? distance = freezed,Object? instrLess = freezed,Object? groupClass = freezed,Object? fav = freezed,Object? pictures = freezed,Object? socialMedia = freezed,Object? avgRating = freezed,Object? totalRatingCount = freezed,Object? equipments = freezed,}) {
  return _then(WaitlistStudioEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,descr: freezed == descr ? _self.descr : descr // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,instrLess: freezed == instrLess ? _self.instrLess : instrLess // ignore: cast_nullable_to_non_nullable
as bool?,groupClass: freezed == groupClass ? _self.groupClass : groupClass // ignore: cast_nullable_to_non_nullable
as bool?,fav: freezed == fav ? _self.fav : fav // ignore: cast_nullable_to_non_nullable
as bool?,pictures: freezed == pictures ? _self.pictures : pictures // ignore: cast_nullable_to_non_nullable
as List<String>?,socialMedia: freezed == socialMedia ? _self.socialMedia : socialMedia // ignore: cast_nullable_to_non_nullable
as dynamic,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,totalRatingCount: freezed == totalRatingCount ? _self.totalRatingCount : totalRatingCount // ignore: cast_nullable_to_non_nullable
as int?,equipments: freezed == equipments ? _self.equipments : equipments // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [WaitlistStudioEntity].
extension WaitlistStudioEntityPatterns on WaitlistStudioEntity {
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
