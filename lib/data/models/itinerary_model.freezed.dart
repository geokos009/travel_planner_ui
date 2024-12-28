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

ItineraryModel _$ItineraryModelFromJson(Map<String, dynamic> json) {
  return _ItineraryModel.fromJson(json);
}

/// @nodoc
mixin _$ItineraryModel {
  List<DayPlan> get itinerary => throw _privateConstructorUsedError;

  /// Serializes this ItineraryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItineraryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItineraryModelCopyWith<ItineraryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryModelCopyWith<$Res> {
  factory $ItineraryModelCopyWith(
          ItineraryModel value, $Res Function(ItineraryModel) then) =
      _$ItineraryModelCopyWithImpl<$Res, ItineraryModel>;
  @useResult
  $Res call({List<DayPlan> itinerary});
}

/// @nodoc
class _$ItineraryModelCopyWithImpl<$Res, $Val extends ItineraryModel>
    implements $ItineraryModelCopyWith<$Res> {
  _$ItineraryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItineraryModel
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
abstract class _$$ItineraryModelImplCopyWith<$Res>
    implements $ItineraryModelCopyWith<$Res> {
  factory _$$ItineraryModelImplCopyWith(_$ItineraryModelImpl value,
          $Res Function(_$ItineraryModelImpl) then) =
      __$$ItineraryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DayPlan> itinerary});
}

/// @nodoc
class __$$ItineraryModelImplCopyWithImpl<$Res>
    extends _$ItineraryModelCopyWithImpl<$Res, _$ItineraryModelImpl>
    implements _$$ItineraryModelImplCopyWith<$Res> {
  __$$ItineraryModelImplCopyWithImpl(
      _$ItineraryModelImpl _value, $Res Function(_$ItineraryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itinerary = null,
  }) {
    return _then(_$ItineraryModelImpl(
      itinerary: null == itinerary
          ? _value._itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as List<DayPlan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItineraryModelImpl implements _ItineraryModel {
  const _$ItineraryModelImpl({required final List<DayPlan> itinerary})
      : _itinerary = itinerary;

  factory _$ItineraryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItineraryModelImplFromJson(json);

  final List<DayPlan> _itinerary;
  @override
  List<DayPlan> get itinerary {
    if (_itinerary is EqualUnmodifiableListView) return _itinerary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itinerary);
  }

  @override
  String toString() {
    return 'ItineraryModel(itinerary: $itinerary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItineraryModelImpl &&
            const DeepCollectionEquality()
                .equals(other._itinerary, _itinerary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itinerary));

  /// Create a copy of ItineraryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItineraryModelImplCopyWith<_$ItineraryModelImpl> get copyWith =>
      __$$ItineraryModelImplCopyWithImpl<_$ItineraryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItineraryModelImplToJson(
      this,
    );
  }
}

abstract class _ItineraryModel implements ItineraryModel {
  const factory _ItineraryModel({required final List<DayPlan> itinerary}) =
      _$ItineraryModelImpl;

  factory _ItineraryModel.fromJson(Map<String, dynamic> json) =
      _$ItineraryModelImpl.fromJson;

  @override
  List<DayPlan> get itinerary;

  /// Create a copy of ItineraryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItineraryModelImplCopyWith<_$ItineraryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayPlan _$DayPlanFromJson(Map<String, dynamic> json) {
  return _DayPlan.fromJson(json);
}

/// @nodoc
mixin _$DayPlan {
  int get day => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get baseLocation => throw _privateConstructorUsedError;
  bool get travelDay => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  Accommodation get accommodation => throw _privateConstructorUsedError;
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
      String baseLocation,
      bool travelDay,
      List<Activity> activities,
      Accommodation accommodation,
      String totalCostEstimate,
      List<String> notes});

  $AccommodationCopyWith<$Res> get accommodation;
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
    Object? accommodation = null,
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
      accommodation: null == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation,
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
  $AccommodationCopyWith<$Res> get accommodation {
    return $AccommodationCopyWith<$Res>(_value.accommodation, (value) {
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
      String baseLocation,
      bool travelDay,
      List<Activity> activities,
      Accommodation accommodation,
      String totalCostEstimate,
      List<String> notes});

  @override
  $AccommodationCopyWith<$Res> get accommodation;
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
    Object? accommodation = null,
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
      accommodation: null == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation,
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
      required this.baseLocation,
      required this.travelDay,
      required final List<Activity> activities,
      required this.accommodation,
      required this.totalCostEstimate,
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
  final String baseLocation;
  @override
  final bool travelDay;
  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final Accommodation accommodation;
  @override
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
      required final String baseLocation,
      required final bool travelDay,
      required final List<Activity> activities,
      required final Accommodation accommodation,
      required final String totalCostEstimate,
      required final List<String> notes}) = _$DayPlanImpl;

  factory _DayPlan.fromJson(Map<String, dynamic> json) = _$DayPlanImpl.fromJson;

  @override
  int get day;
  @override
  String get date;
  @override
  String get baseLocation;
  @override
  bool get travelDay;
  @override
  List<Activity> get activities;
  @override
  Accommodation get accommodation;
  @override
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

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  String get time => throw _privateConstructorUsedError;
  String get activity => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  Transportation get transportation => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  List<String> get tips => throw _privateConstructorUsedError;
  bool get bookingRequired => throw _privateConstructorUsedError;
  String? get bookingInfo => throw _privateConstructorUsedError;

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {String time,
      String activity,
      String location,
      String description,
      String duration,
      Transportation transportation,
      String cost,
      List<String> tips,
      bool bookingRequired,
      String? bookingInfo});

  $TransportationCopyWith<$Res> get transportation;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? activity = null,
    Object? location = null,
    Object? description = null,
    Object? duration = null,
    Object? transportation = null,
    Object? cost = null,
    Object? tips = null,
    Object? bookingRequired = null,
    Object? bookingInfo = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      transportation: null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as Transportation,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      tips: null == tips
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookingRequired: null == bookingRequired
          ? _value.bookingRequired
          : bookingRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingInfo: freezed == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransportationCopyWith<$Res> get transportation {
    return $TransportationCopyWith<$Res>(_value.transportation, (value) {
      return _then(_value.copyWith(transportation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityImplCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$$ActivityImplCopyWith(
          _$ActivityImpl value, $Res Function(_$ActivityImpl) then) =
      __$$ActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      String activity,
      String location,
      String description,
      String duration,
      Transportation transportation,
      String cost,
      List<String> tips,
      bool bookingRequired,
      String? bookingInfo});

  @override
  $TransportationCopyWith<$Res> get transportation;
}

/// @nodoc
class __$$ActivityImplCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? activity = null,
    Object? location = null,
    Object? description = null,
    Object? duration = null,
    Object? transportation = null,
    Object? cost = null,
    Object? tips = null,
    Object? bookingRequired = null,
    Object? bookingInfo = freezed,
  }) {
    return _then(_$ActivityImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      transportation: null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as Transportation,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      tips: null == tips
          ? _value._tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookingRequired: null == bookingRequired
          ? _value.bookingRequired
          : bookingRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingInfo: freezed == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl implements _Activity {
  const _$ActivityImpl(
      {required this.time,
      required this.activity,
      required this.location,
      required this.description,
      required this.duration,
      required this.transportation,
      required this.cost,
      required final List<String> tips,
      required this.bookingRequired,
      this.bookingInfo})
      : _tips = tips;

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  final String time;
  @override
  final String activity;
  @override
  final String location;
  @override
  final String description;
  @override
  final String duration;
  @override
  final Transportation transportation;
  @override
  final String cost;
  final List<String> _tips;
  @override
  List<String> get tips {
    if (_tips is EqualUnmodifiableListView) return _tips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tips);
  }

  @override
  final bool bookingRequired;
  @override
  final String? bookingInfo;

  @override
  String toString() {
    return 'Activity(time: $time, activity: $activity, location: $location, description: $description, duration: $duration, transportation: $transportation, cost: $cost, tips: $tips, bookingRequired: $bookingRequired, bookingInfo: $bookingInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.transportation, transportation) ||
                other.transportation == transportation) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            const DeepCollectionEquality().equals(other._tips, _tips) &&
            (identical(other.bookingRequired, bookingRequired) ||
                other.bookingRequired == bookingRequired) &&
            (identical(other.bookingInfo, bookingInfo) ||
                other.bookingInfo == bookingInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      activity,
      location,
      description,
      duration,
      transportation,
      cost,
      const DeepCollectionEquality().hash(_tips),
      bookingRequired,
      bookingInfo);

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      __$$ActivityImplCopyWithImpl<_$ActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityImplToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  const factory _Activity(
      {required final String time,
      required final String activity,
      required final String location,
      required final String description,
      required final String duration,
      required final Transportation transportation,
      required final String cost,
      required final List<String> tips,
      required final bool bookingRequired,
      final String? bookingInfo}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  String get time;
  @override
  String get activity;
  @override
  String get location;
  @override
  String get description;
  @override
  String get duration;
  @override
  Transportation get transportation;
  @override
  String get cost;
  @override
  List<String> get tips;
  @override
  bool get bookingRequired;
  @override
  String? get bookingInfo;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transportation _$TransportationFromJson(Map<String, dynamic> json) {
  return _Transportation.fromJson(json);
}

/// @nodoc
mixin _$Transportation {
  String get method => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  List<String> get notes => throw _privateConstructorUsedError;

  /// Serializes this Transportation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transportation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransportationCopyWith<Transportation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportationCopyWith<$Res> {
  factory $TransportationCopyWith(
          Transportation value, $Res Function(Transportation) then) =
      _$TransportationCopyWithImpl<$Res, Transportation>;
  @useResult
  $Res call(
      {String method,
      String from,
      String to,
      String duration,
      String cost,
      List<String> notes});
}

/// @nodoc
class _$TransportationCopyWithImpl<$Res, $Val extends Transportation>
    implements $TransportationCopyWith<$Res> {
  _$TransportationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transportation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? from = null,
    Object? to = null,
    Object? duration = null,
    Object? cost = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportationImplCopyWith<$Res>
    implements $TransportationCopyWith<$Res> {
  factory _$$TransportationImplCopyWith(_$TransportationImpl value,
          $Res Function(_$TransportationImpl) then) =
      __$$TransportationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String method,
      String from,
      String to,
      String duration,
      String cost,
      List<String> notes});
}

/// @nodoc
class __$$TransportationImplCopyWithImpl<$Res>
    extends _$TransportationCopyWithImpl<$Res, _$TransportationImpl>
    implements _$$TransportationImplCopyWith<$Res> {
  __$$TransportationImplCopyWithImpl(
      _$TransportationImpl _value, $Res Function(_$TransportationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transportation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? from = null,
    Object? to = null,
    Object? duration = null,
    Object? cost = null,
    Object? notes = null,
  }) {
    return _then(_$TransportationImpl(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
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
class _$TransportationImpl implements _Transportation {
  const _$TransportationImpl(
      {required this.method,
      required this.from,
      required this.to,
      required this.duration,
      required this.cost,
      required final List<String> notes})
      : _notes = notes;

  factory _$TransportationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportationImplFromJson(json);

  @override
  final String method;
  @override
  final String from;
  @override
  final String to;
  @override
  final String duration;
  @override
  final String cost;
  final List<String> _notes;
  @override
  List<String> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'Transportation(method: $method, from: $from, to: $to, duration: $duration, cost: $cost, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportationImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, method, from, to, duration, cost,
      const DeepCollectionEquality().hash(_notes));

  /// Create a copy of Transportation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportationImplCopyWith<_$TransportationImpl> get copyWith =>
      __$$TransportationImplCopyWithImpl<_$TransportationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportationImplToJson(
      this,
    );
  }
}

abstract class _Transportation implements Transportation {
  const factory _Transportation(
      {required final String method,
      required final String from,
      required final String to,
      required final String duration,
      required final String cost,
      required final List<String> notes}) = _$TransportationImpl;

  factory _Transportation.fromJson(Map<String, dynamic> json) =
      _$TransportationImpl.fromJson;

  @override
  String get method;
  @override
  String get from;
  @override
  String get to;
  @override
  String get duration;
  @override
  String get cost;
  @override
  List<String> get notes;

  /// Create a copy of Transportation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransportationImplCopyWith<_$TransportationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Accommodation _$AccommodationFromJson(Map<String, dynamic> json) {
  return _Accommodation.fromJson(json);
}

/// @nodoc
mixin _$Accommodation {
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get checkIn => throw _privateConstructorUsedError;
  String get checkOut => throw _privateConstructorUsedError;
  List<String> get amenities => throw _privateConstructorUsedError;
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
      String checkIn,
      String checkOut,
      List<String> amenities,
      String bookingInfo,
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
      String checkIn,
      String checkOut,
      List<String> amenities,
      String bookingInfo,
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
      required this.checkIn,
      required this.checkOut,
      required final List<String> amenities,
      required this.bookingInfo,
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
  final String checkIn;
  @override
  final String checkOut;
  final List<String> _amenities;
  @override
  List<String> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  @override
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
      required final String checkIn,
      required final String checkOut,
      required final List<String> amenities,
      required final String bookingInfo,
      required final List<String> notes}) = _$AccommodationImpl;

  factory _Accommodation.fromJson(Map<String, dynamic> json) =
      _$AccommodationImpl.fromJson;

  @override
  String get name;
  @override
  String get location;
  @override
  String get checkIn;
  @override
  String get checkOut;
  @override
  List<String> get amenities;
  @override
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
