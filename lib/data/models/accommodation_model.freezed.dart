// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Accommodation _$AccommodationFromJson(Map<String, dynamic> json) {
  return _Accommodation.fromJson(json);
}

/// @nodoc
mixin _$Accommodation {
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_in')
  String get checkIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_out')
  String get checkOut => throw _privateConstructorUsedError;
  List<String> get amenities => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_info')
  String get bookingInfo => throw _privateConstructorUsedError;
  List<String> get notes => throw _privateConstructorUsedError;

  /// Serializes this Accommodation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Accommodation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccommodationCopyWith<Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationCopyWith<$Res> {
  factory $AccommodationCopyWith(
          Accommodation value, $Res Function(Accommodation) then) =
      _$AccommodationCopyWithImpl<$Res, Accommodation>;
  @useResult
  $Res call(
      {String name,
      String location,
      @JsonKey(name: 'check_in') String checkIn,
      @JsonKey(name: 'check_out') String checkOut,
      List<String> amenities,
      @JsonKey(name: 'booking_info') String bookingInfo,
      List<String> notes});
}

/// @nodoc
class _$AccommodationCopyWithImpl<$Res, $Val extends Accommodation>
    implements $AccommodationCopyWith<$Res> {
  _$AccommodationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Accommodation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
    Object? checkIn = null,
    Object? checkOut = null,
    Object? amenities = null,
    Object? bookingInfo = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      checkIn: null == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String,
      checkOut: null == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String,
      amenities: null == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookingInfo: null == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccommodationImplCopyWith<$Res>
    implements $AccommodationCopyWith<$Res> {
  factory _$$AccommodationImplCopyWith(
          _$AccommodationImpl value, $Res Function(_$AccommodationImpl) then) =
      __$$AccommodationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String location,
      @JsonKey(name: 'check_in') String checkIn,
      @JsonKey(name: 'check_out') String checkOut,
      List<String> amenities,
      @JsonKey(name: 'booking_info') String bookingInfo,
      List<String> notes});
}

/// @nodoc
class __$$AccommodationImplCopyWithImpl<$Res>
    extends _$AccommodationCopyWithImpl<$Res, _$AccommodationImpl>
    implements _$$AccommodationImplCopyWith<$Res> {
  __$$AccommodationImplCopyWithImpl(
      _$AccommodationImpl _value, $Res Function(_$AccommodationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Accommodation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
    Object? checkIn = null,
    Object? checkOut = null,
    Object? amenities = null,
    Object? bookingInfo = null,
    Object? notes = null,
  }) {
    return _then(_$AccommodationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      checkIn: null == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String,
      checkOut: null == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String,
      amenities: null == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookingInfo: null == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccommodationImpl implements _Accommodation {
  const _$AccommodationImpl(
      {required this.name,
      required this.location,
      @JsonKey(name: 'check_in') required this.checkIn,
      @JsonKey(name: 'check_out') required this.checkOut,
      required final List<String> amenities,
      @JsonKey(name: 'booking_info') required this.bookingInfo,
      required final List<String> notes})
      : _amenities = amenities,
        _notes = notes;

  factory _$AccommodationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccommodationImplFromJson(json);

  @override
  final String name;
  @override
  final String location;
  @override
  @JsonKey(name: 'check_in')
  final String checkIn;
  @override
  @JsonKey(name: 'check_out')
  final String checkOut;
  final List<String> _amenities;
  @override
  List<String> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  @override
  @JsonKey(name: 'booking_info')
  final String bookingInfo;
  final List<String> _notes;
  @override
  List<String> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'Accommodation(name: $name, location: $location, checkIn: $checkIn, checkOut: $checkOut, amenities: $amenities, bookingInfo: $bookingInfo, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.bookingInfo, bookingInfo) ||
                other.bookingInfo == bookingInfo) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      location,
      checkIn,
      checkOut,
      const DeepCollectionEquality().hash(_amenities),
      bookingInfo,
      const DeepCollectionEquality().hash(_notes));

  /// Create a copy of Accommodation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationImplCopyWith<_$AccommodationImpl> get copyWith =>
      __$$AccommodationImplCopyWithImpl<_$AccommodationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccommodationImplToJson(
      this,
    );
  }
}

abstract class _Accommodation implements Accommodation {
  const factory _Accommodation(
      {required final String name,
      required final String location,
      @JsonKey(name: 'check_in') required final String checkIn,
      @JsonKey(name: 'check_out') required final String checkOut,
      required final List<String> amenities,
      @JsonKey(name: 'booking_info') required final String bookingInfo,
      required final List<String> notes}) = _$AccommodationImpl;

  factory _Accommodation.fromJson(Map<String, dynamic> json) =
      _$AccommodationImpl.fromJson;

  @override
  String get name;
  @override
  String get location;
  @override
  @JsonKey(name: 'check_in')
  String get checkIn;
  @override
  @JsonKey(name: 'check_out')
  String get checkOut;
  @override
  List<String> get amenities;
  @override
  @JsonKey(name: 'booking_info')
  String get bookingInfo;
  @override
  List<String> get notes;

  /// Create a copy of Accommodation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccommodationImplCopyWith<_$AccommodationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
