// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'itinerary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItineraryResponse _$ItineraryResponseFromJson(Map<String, dynamic> json) {
  return _ItineraryResponse.fromJson(json);
}

/// @nodoc
mixin _$ItineraryResponse {
  bool get error => throw _privateConstructorUsedError;
  ItineraryData get data => throw _privateConstructorUsedError;

  /// Serializes this ItineraryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItineraryResponseCopyWith<ItineraryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryResponseCopyWith<$Res> {
  factory $ItineraryResponseCopyWith(
          ItineraryResponse value, $Res Function(ItineraryResponse) then) =
      _$ItineraryResponseCopyWithImpl<$Res, ItineraryResponse>;
  @useResult
  $Res call({bool error, ItineraryData data});

  $ItineraryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ItineraryResponseCopyWithImpl<$Res, $Val extends ItineraryResponse>
    implements $ItineraryResponseCopyWith<$Res> {
  _$ItineraryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ItineraryData,
    ) as $Val);
  }

  /// Create a copy of ItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItineraryDataCopyWith<$Res> get data {
    return $ItineraryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItineraryResponseImplCopyWith<$Res>
    implements $ItineraryResponseCopyWith<$Res> {
  factory _$$ItineraryResponseImplCopyWith(_$ItineraryResponseImpl value,
          $Res Function(_$ItineraryResponseImpl) then) =
      __$$ItineraryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, ItineraryData data});

  @override
  $ItineraryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ItineraryResponseImplCopyWithImpl<$Res>
    extends _$ItineraryResponseCopyWithImpl<$Res, _$ItineraryResponseImpl>
    implements _$$ItineraryResponseImplCopyWith<$Res> {
  __$$ItineraryResponseImplCopyWithImpl(_$ItineraryResponseImpl _value,
      $Res Function(_$ItineraryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = null,
  }) {
    return _then(_$ItineraryResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ItineraryData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItineraryResponseImpl implements _ItineraryResponse {
  const _$ItineraryResponseImpl({required this.error, required this.data});

  factory _$ItineraryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItineraryResponseImplFromJson(json);

  @override
  final bool error;
  @override
  final ItineraryData data;

  @override
  String toString() {
    return 'ItineraryResponse(error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItineraryResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, data);

  /// Create a copy of ItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItineraryResponseImplCopyWith<_$ItineraryResponseImpl> get copyWith =>
      __$$ItineraryResponseImplCopyWithImpl<_$ItineraryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItineraryResponseImplToJson(
      this,
    );
  }
}

abstract class _ItineraryResponse implements ItineraryResponse {
  const factory _ItineraryResponse(
      {required final bool error,
      required final ItineraryData data}) = _$ItineraryResponseImpl;

  factory _ItineraryResponse.fromJson(Map<String, dynamic> json) =
      _$ItineraryResponseImpl.fromJson;

  @override
  bool get error;
  @override
  ItineraryData get data;

  /// Create a copy of ItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItineraryResponseImplCopyWith<_$ItineraryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItineraryData _$ItineraryDataFromJson(Map<String, dynamic> json) {
  return _ItineraryData.fromJson(json);
}

/// @nodoc
mixin _$ItineraryData {
  List<DayPlan> get itinerary => throw _privateConstructorUsedError;

  /// Serializes this ItineraryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItineraryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItineraryDataCopyWith<ItineraryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryDataCopyWith<$Res> {
  factory $ItineraryDataCopyWith(
          ItineraryData value, $Res Function(ItineraryData) then) =
      _$ItineraryDataCopyWithImpl<$Res, ItineraryData>;
  @useResult
  $Res call({List<DayPlan> itinerary});
}

/// @nodoc
class _$ItineraryDataCopyWithImpl<$Res, $Val extends ItineraryData>
    implements $ItineraryDataCopyWith<$Res> {
  _$ItineraryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItineraryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itinerary = null,
  }) {
    return _then(_value.copyWith(
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as List<DayPlan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItineraryDataImplCopyWith<$Res>
    implements $ItineraryDataCopyWith<$Res> {
  factory _$$ItineraryDataImplCopyWith(
          _$ItineraryDataImpl value, $Res Function(_$ItineraryDataImpl) then) =
      __$$ItineraryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DayPlan> itinerary});
}

/// @nodoc
class __$$ItineraryDataImplCopyWithImpl<$Res>
    extends _$ItineraryDataCopyWithImpl<$Res, _$ItineraryDataImpl>
    implements _$$ItineraryDataImplCopyWith<$Res> {
  __$$ItineraryDataImplCopyWithImpl(
      _$ItineraryDataImpl _value, $Res Function(_$ItineraryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itinerary = null,
  }) {
    return _then(_$ItineraryDataImpl(
      itinerary: null == itinerary
          ? _value._itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as List<DayPlan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItineraryDataImpl implements _ItineraryData {
  const _$ItineraryDataImpl({required final List<DayPlan> itinerary})
      : _itinerary = itinerary;

  factory _$ItineraryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItineraryDataImplFromJson(json);

  final List<DayPlan> _itinerary;
  @override
  List<DayPlan> get itinerary {
    if (_itinerary is EqualUnmodifiableListView) return _itinerary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itinerary);
  }

  @override
  String toString() {
    return 'ItineraryData(itinerary: $itinerary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItineraryDataImpl &&
            const DeepCollectionEquality()
                .equals(other._itinerary, _itinerary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itinerary));

  /// Create a copy of ItineraryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItineraryDataImplCopyWith<_$ItineraryDataImpl> get copyWith =>
      __$$ItineraryDataImplCopyWithImpl<_$ItineraryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItineraryDataImplToJson(
      this,
    );
  }
}

abstract class _ItineraryData implements ItineraryData {
  const factory _ItineraryData({required final List<DayPlan> itinerary}) =
      _$ItineraryDataImpl;

  factory _ItineraryData.fromJson(Map<String, dynamic> json) =
      _$ItineraryDataImpl.fromJson;

  @override
  List<DayPlan> get itinerary;

  /// Create a copy of ItineraryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItineraryDataImplCopyWith<_$ItineraryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayPlan _$DayPlanFromJson(Map<String, dynamic> json) {
  return _DayPlan.fromJson(json);
}

/// @nodoc
mixin _$DayPlan {
  int get day => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_location')
  String get baseLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'travel_day')
  bool get travelDay => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  Accommodation? get accommodation => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_cost_estimate')
  String get totalCostEstimate => throw _privateConstructorUsedError;
  List<String> get notes => throw _privateConstructorUsedError;

  /// Serializes this DayPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DayPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayPlanCopyWith<DayPlan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayPlanCopyWith<$Res> {
  factory $DayPlanCopyWith(DayPlan value, $Res Function(DayPlan) then) =
      _$DayPlanCopyWithImpl<$Res, DayPlan>;
  @useResult
  $Res call(
      {int day,
      String date,
      @JsonKey(name: 'base_location') String baseLocation,
      @JsonKey(name: 'travel_day') bool travelDay,
      List<Activity> activities,
      Accommodation? accommodation,
      @JsonKey(name: 'total_cost_estimate') String totalCostEstimate,
      List<String> notes});

  $AccommodationCopyWith<$Res>? get accommodation;
}

/// @nodoc
class _$DayPlanCopyWithImpl<$Res, $Val extends DayPlan>
    implements $DayPlanCopyWith<$Res> {
  _$DayPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? date = null,
    Object? baseLocation = null,
    Object? travelDay = null,
    Object? activities = null,
    Object? accommodation = freezed,
    Object? totalCostEstimate = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      baseLocation: null == baseLocation
          ? _value.baseLocation
          : baseLocation // ignore: cast_nullable_to_non_nullable
              as String,
      travelDay: null == travelDay
          ? _value.travelDay
          : travelDay // ignore: cast_nullable_to_non_nullable
              as bool,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      accommodation: freezed == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation?,
      totalCostEstimate: null == totalCostEstimate
          ? _value.totalCostEstimate
          : totalCostEstimate // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of DayPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccommodationCopyWith<$Res>? get accommodation {
    if (_value.accommodation == null) {
      return null;
    }

    return $AccommodationCopyWith<$Res>(_value.accommodation!, (value) {
      return _then(_value.copyWith(accommodation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DayPlanImplCopyWith<$Res> implements $DayPlanCopyWith<$Res> {
  factory _$$DayPlanImplCopyWith(
          _$DayPlanImpl value, $Res Function(_$DayPlanImpl) then) =
      __$$DayPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int day,
      String date,
      @JsonKey(name: 'base_location') String baseLocation,
      @JsonKey(name: 'travel_day') bool travelDay,
      List<Activity> activities,
      Accommodation? accommodation,
      @JsonKey(name: 'total_cost_estimate') String totalCostEstimate,
      List<String> notes});

  @override
  $AccommodationCopyWith<$Res>? get accommodation;
}

/// @nodoc
class __$$DayPlanImplCopyWithImpl<$Res>
    extends _$DayPlanCopyWithImpl<$Res, _$DayPlanImpl>
    implements _$$DayPlanImplCopyWith<$Res> {
  __$$DayPlanImplCopyWithImpl(
      _$DayPlanImpl _value, $Res Function(_$DayPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of DayPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? date = null,
    Object? baseLocation = null,
    Object? travelDay = null,
    Object? activities = null,
    Object? accommodation = freezed,
    Object? totalCostEstimate = null,
    Object? notes = null,
  }) {
    return _then(_$DayPlanImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      baseLocation: null == baseLocation
          ? _value.baseLocation
          : baseLocation // ignore: cast_nullable_to_non_nullable
              as String,
      travelDay: null == travelDay
          ? _value.travelDay
          : travelDay // ignore: cast_nullable_to_non_nullable
              as bool,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      accommodation: freezed == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation?,
      totalCostEstimate: null == totalCostEstimate
          ? _value.totalCostEstimate
          : totalCostEstimate // ignore: cast_nullable_to_non_nullable
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
class _$DayPlanImpl implements _DayPlan {
  const _$DayPlanImpl(
      {required this.day,
      required this.date,
      @JsonKey(name: 'base_location') required this.baseLocation,
      @JsonKey(name: 'travel_day') required this.travelDay,
      required final List<Activity> activities,
      this.accommodation,
      @JsonKey(name: 'total_cost_estimate') required this.totalCostEstimate,
      required final List<String> notes})
      : _activities = activities,
        _notes = notes;

  factory _$DayPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayPlanImplFromJson(json);

  @override
  final int day;
  @override
  final String date;
  @override
  @JsonKey(name: 'base_location')
  final String baseLocation;
  @override
  @JsonKey(name: 'travel_day')
  final bool travelDay;
  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final Accommodation? accommodation;
  @override
  @JsonKey(name: 'total_cost_estimate')
  final String totalCostEstimate;
  final List<String> _notes;
  @override
  List<String> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'DayPlan(day: $day, date: $date, baseLocation: $baseLocation, travelDay: $travelDay, activities: $activities, accommodation: $accommodation, totalCostEstimate: $totalCostEstimate, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayPlanImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.baseLocation, baseLocation) ||
                other.baseLocation == baseLocation) &&
            (identical(other.travelDay, travelDay) ||
                other.travelDay == travelDay) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.accommodation, accommodation) ||
                other.accommodation == accommodation) &&
            (identical(other.totalCostEstimate, totalCostEstimate) ||
                other.totalCostEstimate == totalCostEstimate) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      day,
      date,
      baseLocation,
      travelDay,
      const DeepCollectionEquality().hash(_activities),
      accommodation,
      totalCostEstimate,
      const DeepCollectionEquality().hash(_notes));

  /// Create a copy of DayPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayPlanImplCopyWith<_$DayPlanImpl> get copyWith =>
      __$$DayPlanImplCopyWithImpl<_$DayPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayPlanImplToJson(
      this,
    );
  }
}

abstract class _DayPlan implements DayPlan {
  const factory _DayPlan(
      {required final int day,
      required final String date,
      @JsonKey(name: 'base_location') required final String baseLocation,
      @JsonKey(name: 'travel_day') required final bool travelDay,
      required final List<Activity> activities,
      final Accommodation? accommodation,
      @JsonKey(name: 'total_cost_estimate')
      required final String totalCostEstimate,
      required final List<String> notes}) = _$DayPlanImpl;

  factory _DayPlan.fromJson(Map<String, dynamic> json) = _$DayPlanImpl.fromJson;

  @override
  int get day;
  @override
  String get date;
  @override
  @JsonKey(name: 'base_location')
  String get baseLocation;
  @override
  @JsonKey(name: 'travel_day')
  bool get travelDay;
  @override
  List<Activity> get activities;
  @override
  Accommodation? get accommodation;
  @override
  @JsonKey(name: 'total_cost_estimate')
  String get totalCostEstimate;
  @override
  List<String> get notes;

  /// Create a copy of DayPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayPlanImplCopyWith<_$DayPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
