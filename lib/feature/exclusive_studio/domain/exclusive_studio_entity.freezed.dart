// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exclusive_studio_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExclusiveStudioListEntity {

 List<ExclusiveStudioEntity>? get items; num? get totalItems; num? get totalPages; num? get currentPage; num? get pageSize;
/// Create a copy of ExclusiveStudioListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExclusiveStudioListEntityCopyWith<ExclusiveStudioListEntity> get copyWith => _$ExclusiveStudioListEntityCopyWithImpl<ExclusiveStudioListEntity>(this as ExclusiveStudioListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExclusiveStudioListEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalItems,totalPages,currentPage,pageSize);

@override
String toString() {
  return 'ExclusiveStudioListEntity(items: $items, totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $ExclusiveStudioListEntityCopyWith<$Res>  {
  factory $ExclusiveStudioListEntityCopyWith(ExclusiveStudioListEntity value, $Res Function(ExclusiveStudioListEntity) _then) = _$ExclusiveStudioListEntityCopyWithImpl;
@useResult
$Res call({
 List<ExclusiveStudioEntity>? items, num? totalItems, num? totalPages, num? currentPage, num? pageSize
});




}
/// @nodoc
class _$ExclusiveStudioListEntityCopyWithImpl<$Res>
    implements $ExclusiveStudioListEntityCopyWith<$Res> {
  _$ExclusiveStudioListEntityCopyWithImpl(this._self, this._then);

  final ExclusiveStudioListEntity _self;
  final $Res Function(ExclusiveStudioListEntity) _then;

/// Create a copy of ExclusiveStudioListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,Object? totalItems = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? pageSize = freezed,}) {
  return _then(ExclusiveStudioListEntity(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ExclusiveStudioEntity>?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as num?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as num?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as num?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExclusiveStudioListEntity].
extension ExclusiveStudioListEntityPatterns on ExclusiveStudioListEntity {
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
mixin _$ExclusiveStudioEntity {

 String? get id; bool? get isExclusive; String? get status; String? get statusLabel; bool? get deleted; ExclusiveStudioDetailsEntity? get studio; String? get instructorName; String? get instructorCode; String? get instructorEmail; String? get instructorPhone; List<ExclusiveStudioWorkHoursEntity>? get workHours;
/// Create a copy of ExclusiveStudioEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExclusiveStudioEntityCopyWith<ExclusiveStudioEntity> get copyWith => _$ExclusiveStudioEntityCopyWithImpl<ExclusiveStudioEntity>(this as ExclusiveStudioEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExclusiveStudioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.isExclusive, isExclusive) || other.isExclusive == isExclusive)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.studio, studio) || other.studio == studio)&&(identical(other.instructorName, instructorName) || other.instructorName == instructorName)&&(identical(other.instructorCode, instructorCode) || other.instructorCode == instructorCode)&&(identical(other.instructorEmail, instructorEmail) || other.instructorEmail == instructorEmail)&&(identical(other.instructorPhone, instructorPhone) || other.instructorPhone == instructorPhone)&&const DeepCollectionEquality().equals(other.workHours, workHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isExclusive,status,statusLabel,deleted,studio,instructorName,instructorCode,instructorEmail,instructorPhone,const DeepCollectionEquality().hash(workHours));

@override
String toString() {
  return 'ExclusiveStudioEntity(id: $id, isExclusive: $isExclusive, status: $status, statusLabel: $statusLabel, deleted: $deleted, studio: $studio, instructorName: $instructorName, instructorCode: $instructorCode, instructorEmail: $instructorEmail, instructorPhone: $instructorPhone, workHours: $workHours)';
}


}

/// @nodoc
abstract mixin class $ExclusiveStudioEntityCopyWith<$Res>  {
  factory $ExclusiveStudioEntityCopyWith(ExclusiveStudioEntity value, $Res Function(ExclusiveStudioEntity) _then) = _$ExclusiveStudioEntityCopyWithImpl;
@useResult
$Res call({
 String? id, bool? isExclusive, String? status, String? statusLabel, bool? deleted, ExclusiveStudioDetailsEntity? studio, String? instructorName, String? instructorCode, String? instructorEmail, String? instructorPhone, List<ExclusiveStudioWorkHoursEntity>? workHours
});




}
/// @nodoc
class _$ExclusiveStudioEntityCopyWithImpl<$Res>
    implements $ExclusiveStudioEntityCopyWith<$Res> {
  _$ExclusiveStudioEntityCopyWithImpl(this._self, this._then);

  final ExclusiveStudioEntity _self;
  final $Res Function(ExclusiveStudioEntity) _then;

/// Create a copy of ExclusiveStudioEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? isExclusive = freezed,Object? status = freezed,Object? statusLabel = freezed,Object? deleted = freezed,Object? studio = freezed,Object? instructorName = freezed,Object? instructorCode = freezed,Object? instructorEmail = freezed,Object? instructorPhone = freezed,Object? workHours = freezed,}) {
  return _then(ExclusiveStudioEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isExclusive: freezed == isExclusive ? _self.isExclusive : isExclusive // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,studio: freezed == studio ? _self.studio : studio // ignore: cast_nullable_to_non_nullable
as ExclusiveStudioDetailsEntity?,instructorName: freezed == instructorName ? _self.instructorName : instructorName // ignore: cast_nullable_to_non_nullable
as String?,instructorCode: freezed == instructorCode ? _self.instructorCode : instructorCode // ignore: cast_nullable_to_non_nullable
as String?,instructorEmail: freezed == instructorEmail ? _self.instructorEmail : instructorEmail // ignore: cast_nullable_to_non_nullable
as String?,instructorPhone: freezed == instructorPhone ? _self.instructorPhone : instructorPhone // ignore: cast_nullable_to_non_nullable
as String?,workHours: freezed == workHours ? _self.workHours : workHours // ignore: cast_nullable_to_non_nullable
as List<ExclusiveStudioWorkHoursEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExclusiveStudioEntity].
extension ExclusiveStudioEntityPatterns on ExclusiveStudioEntity {
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
mixin _$ExclusiveStudioDetailsEntity {

 String? get id; String? get name; String? get address; List<String>? get pictures;
/// Create a copy of ExclusiveStudioDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExclusiveStudioDetailsEntityCopyWith<ExclusiveStudioDetailsEntity> get copyWith => _$ExclusiveStudioDetailsEntityCopyWithImpl<ExclusiveStudioDetailsEntity>(this as ExclusiveStudioDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExclusiveStudioDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.pictures, pictures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,const DeepCollectionEquality().hash(pictures));

@override
String toString() {
  return 'ExclusiveStudioDetailsEntity(id: $id, name: $name, address: $address, pictures: $pictures)';
}


}

/// @nodoc
abstract mixin class $ExclusiveStudioDetailsEntityCopyWith<$Res>  {
  factory $ExclusiveStudioDetailsEntityCopyWith(ExclusiveStudioDetailsEntity value, $Res Function(ExclusiveStudioDetailsEntity) _then) = _$ExclusiveStudioDetailsEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? address, List<String>? pictures
});




}
/// @nodoc
class _$ExclusiveStudioDetailsEntityCopyWithImpl<$Res>
    implements $ExclusiveStudioDetailsEntityCopyWith<$Res> {
  _$ExclusiveStudioDetailsEntityCopyWithImpl(this._self, this._then);

  final ExclusiveStudioDetailsEntity _self;
  final $Res Function(ExclusiveStudioDetailsEntity) _then;

/// Create a copy of ExclusiveStudioDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? address = freezed,Object? pictures = freezed,}) {
  return _then(ExclusiveStudioDetailsEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,pictures: freezed == pictures ? _self.pictures : pictures // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExclusiveStudioDetailsEntity].
extension ExclusiveStudioDetailsEntityPatterns on ExclusiveStudioDetailsEntity {
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
mixin _$ExclusiveStudioWorkHoursEntity {

 String? get type; List<ExclusiveSlotEntity>? get slots;
/// Create a copy of ExclusiveStudioWorkHoursEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExclusiveStudioWorkHoursEntityCopyWith<ExclusiveStudioWorkHoursEntity> get copyWith => _$ExclusiveStudioWorkHoursEntityCopyWithImpl<ExclusiveStudioWorkHoursEntity>(this as ExclusiveStudioWorkHoursEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExclusiveStudioWorkHoursEntity&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.slots, slots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(slots));

@override
String toString() {
  return 'ExclusiveStudioWorkHoursEntity(type: $type, slots: $slots)';
}


}

/// @nodoc
abstract mixin class $ExclusiveStudioWorkHoursEntityCopyWith<$Res>  {
  factory $ExclusiveStudioWorkHoursEntityCopyWith(ExclusiveStudioWorkHoursEntity value, $Res Function(ExclusiveStudioWorkHoursEntity) _then) = _$ExclusiveStudioWorkHoursEntityCopyWithImpl;
@useResult
$Res call({
 String? type, List<ExclusiveSlotEntity>? slots
});




}
/// @nodoc
class _$ExclusiveStudioWorkHoursEntityCopyWithImpl<$Res>
    implements $ExclusiveStudioWorkHoursEntityCopyWith<$Res> {
  _$ExclusiveStudioWorkHoursEntityCopyWithImpl(this._self, this._then);

  final ExclusiveStudioWorkHoursEntity _self;
  final $Res Function(ExclusiveStudioWorkHoursEntity) _then;

/// Create a copy of ExclusiveStudioWorkHoursEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? slots = freezed,}) {
  return _then(ExclusiveStudioWorkHoursEntity(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slots: freezed == slots ? _self.slots : slots // ignore: cast_nullable_to_non_nullable
as List<ExclusiveSlotEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExclusiveStudioWorkHoursEntity].
extension ExclusiveStudioWorkHoursEntityPatterns on ExclusiveStudioWorkHoursEntity {
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
mixin _$ExclusiveSlotEntity {

 String? get start; String? get end;
/// Create a copy of ExclusiveSlotEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExclusiveSlotEntityCopyWith<ExclusiveSlotEntity> get copyWith => _$ExclusiveSlotEntityCopyWithImpl<ExclusiveSlotEntity>(this as ExclusiveSlotEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExclusiveSlotEntity&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'ExclusiveSlotEntity(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $ExclusiveSlotEntityCopyWith<$Res>  {
  factory $ExclusiveSlotEntityCopyWith(ExclusiveSlotEntity value, $Res Function(ExclusiveSlotEntity) _then) = _$ExclusiveSlotEntityCopyWithImpl;
@useResult
$Res call({
 String? start, String? end
});




}
/// @nodoc
class _$ExclusiveSlotEntityCopyWithImpl<$Res>
    implements $ExclusiveSlotEntityCopyWith<$Res> {
  _$ExclusiveSlotEntityCopyWithImpl(this._self, this._then);

  final ExclusiveSlotEntity _self;
  final $Res Function(ExclusiveSlotEntity) _then;

/// Create a copy of ExclusiveSlotEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? end = freezed,}) {
  return _then(ExclusiveSlotEntity(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExclusiveSlotEntity].
extension ExclusiveSlotEntityPatterns on ExclusiveSlotEntity {
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
mixin _$ExclusiveStudioRatesEntity {

 String? get type; List<ExclusiveRatesEntity>? get rates;
/// Create a copy of ExclusiveStudioRatesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExclusiveStudioRatesEntityCopyWith<ExclusiveStudioRatesEntity> get copyWith => _$ExclusiveStudioRatesEntityCopyWithImpl<ExclusiveStudioRatesEntity>(this as ExclusiveStudioRatesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExclusiveStudioRatesEntity&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.rates, rates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(rates));

@override
String toString() {
  return 'ExclusiveStudioRatesEntity(type: $type, rates: $rates)';
}


}

/// @nodoc
abstract mixin class $ExclusiveStudioRatesEntityCopyWith<$Res>  {
  factory $ExclusiveStudioRatesEntityCopyWith(ExclusiveStudioRatesEntity value, $Res Function(ExclusiveStudioRatesEntity) _then) = _$ExclusiveStudioRatesEntityCopyWithImpl;
@useResult
$Res call({
 String? type, List<ExclusiveRatesEntity>? rates
});




}
/// @nodoc
class _$ExclusiveStudioRatesEntityCopyWithImpl<$Res>
    implements $ExclusiveStudioRatesEntityCopyWith<$Res> {
  _$ExclusiveStudioRatesEntityCopyWithImpl(this._self, this._then);

  final ExclusiveStudioRatesEntity _self;
  final $Res Function(ExclusiveStudioRatesEntity) _then;

/// Create a copy of ExclusiveStudioRatesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? rates = freezed,}) {
  return _then(ExclusiveStudioRatesEntity(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,rates: freezed == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as List<ExclusiveRatesEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExclusiveStudioRatesEntity].
extension ExclusiveStudioRatesEntityPatterns on ExclusiveStudioRatesEntity {
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
mixin _$ExclusiveRatesEntity {

 String? get start; String? get end; String? get price;
/// Create a copy of ExclusiveRatesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExclusiveRatesEntityCopyWith<ExclusiveRatesEntity> get copyWith => _$ExclusiveRatesEntityCopyWithImpl<ExclusiveRatesEntity>(this as ExclusiveRatesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExclusiveRatesEntity&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,price);

@override
String toString() {
  return 'ExclusiveRatesEntity(start: $start, end: $end, price: $price)';
}


}

/// @nodoc
abstract mixin class $ExclusiveRatesEntityCopyWith<$Res>  {
  factory $ExclusiveRatesEntityCopyWith(ExclusiveRatesEntity value, $Res Function(ExclusiveRatesEntity) _then) = _$ExclusiveRatesEntityCopyWithImpl;
@useResult
$Res call({
 String? start, String? end, String? price
});




}
/// @nodoc
class _$ExclusiveRatesEntityCopyWithImpl<$Res>
    implements $ExclusiveRatesEntityCopyWith<$Res> {
  _$ExclusiveRatesEntityCopyWithImpl(this._self, this._then);

  final ExclusiveRatesEntity _self;
  final $Res Function(ExclusiveRatesEntity) _then;

/// Create a copy of ExclusiveRatesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? end = freezed,Object? price = freezed,}) {
  return _then(ExclusiveRatesEntity(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExclusiveRatesEntity].
extension ExclusiveRatesEntityPatterns on ExclusiveRatesEntity {
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
