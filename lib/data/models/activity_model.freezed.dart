// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  ActivityTransportation get transportation =>
      throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  List<String> get tips => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_required')
  bool get bookingRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_info')
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
      ActivityTransportation transportation,
      String cost,
      List<String> tips,
      @JsonKey(name: 'booking_required') bool bookingRequired,
      @JsonKey(name: 'booking_info') String? bookingInfo});

  $ActivityTransportationCopyWith<$Res> get transportation;
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
              as ActivityTransportation,
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
  $ActivityTransportationCopyWith<$Res> get transportation {
    return $ActivityTransportationCopyWith<$Res>(_value.transportation,
        (value) {
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
      ActivityTransportation transportation,
      String cost,
      List<String> tips,
      @JsonKey(name: 'booking_required') bool bookingRequired,
      @JsonKey(name: 'booking_info') String? bookingInfo});

  @override
  $ActivityTransportationCopyWith<$Res> get transportation;
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
              as ActivityTransportation,
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
      @JsonKey(name: 'booking_required') required this.bookingRequired,
      @JsonKey(name: 'booking_info') this.bookingInfo})
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
  final ActivityTransportation transportation;
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
  @JsonKey(name: 'booking_required')
  final bool bookingRequired;
  @override
  @JsonKey(name: 'booking_info')
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
      required final ActivityTransportation transportation,
      required final String cost,
      required final List<String> tips,
      @JsonKey(name: 'booking_required') required final bool bookingRequired,
      @JsonKey(name: 'booking_info')
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
  ActivityTransportation get transportation;
  @override
  String get cost;
  @override
  List<String> get tips;
  @override
  @JsonKey(name: 'booking_required')
  bool get bookingRequired;
  @override
  @JsonKey(name: 'booking_info')
  String? get bookingInfo;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityTransportation _$ActivityTransportationFromJson(
    Map<String, dynamic> json) {
  return _ActivityTransportation.fromJson(json);
}

/// @nodoc
mixin _$ActivityTransportation {
  String get method => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  List<String> get notes => throw _privateConstructorUsedError;

  /// Serializes this ActivityTransportation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityTransportation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityTransportationCopyWith<ActivityTransportation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityTransportationCopyWith<$Res> {
  factory $ActivityTransportationCopyWith(ActivityTransportation value,
          $Res Function(ActivityTransportation) then) =
      _$ActivityTransportationCopyWithImpl<$Res, ActivityTransportation>;
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
class _$ActivityTransportationCopyWithImpl<$Res,
        $Val extends ActivityTransportation>
    implements $ActivityTransportationCopyWith<$Res> {
  _$ActivityTransportationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityTransportation
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
abstract class _$$ActivityTransportationImplCopyWith<$Res>
    implements $ActivityTransportationCopyWith<$Res> {
  factory _$$ActivityTransportationImplCopyWith(
          _$ActivityTransportationImpl value,
          $Res Function(_$ActivityTransportationImpl) then) =
      __$$ActivityTransportationImplCopyWithImpl<$Res>;
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
class __$$ActivityTransportationImplCopyWithImpl<$Res>
    extends _$ActivityTransportationCopyWithImpl<$Res,
        _$ActivityTransportationImpl>
    implements _$$ActivityTransportationImplCopyWith<$Res> {
  __$$ActivityTransportationImplCopyWithImpl(
      _$ActivityTransportationImpl _value,
      $Res Function(_$ActivityTransportationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityTransportation
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
    return _then(_$ActivityTransportationImpl(
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
class _$ActivityTransportationImpl implements _ActivityTransportation {
  const _$ActivityTransportationImpl(
      {required this.method,
      required this.from,
      required this.to,
      required this.duration,
      required this.cost,
      required final List<String> notes})
      : _notes = notes;

  factory _$ActivityTransportationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityTransportationImplFromJson(json);

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
    return 'ActivityTransportation(method: $method, from: $from, to: $to, duration: $duration, cost: $cost, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityTransportationImpl &&
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

  /// Create a copy of ActivityTransportation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityTransportationImplCopyWith<_$ActivityTransportationImpl>
      get copyWith => __$$ActivityTransportationImplCopyWithImpl<
          _$ActivityTransportationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityTransportationImplToJson(
      this,
    );
  }
}

abstract class _ActivityTransportation implements ActivityTransportation {
  const factory _ActivityTransportation(
      {required final String method,
      required final String from,
      required final String to,
      required final String duration,
      required final String cost,
      required final List<String> notes}) = _$ActivityTransportationImpl;

  factory _ActivityTransportation.fromJson(Map<String, dynamic> json) =
      _$ActivityTransportationImpl.fromJson;

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

  /// Create a copy of ActivityTransportation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityTransportationImplCopyWith<_$ActivityTransportationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
