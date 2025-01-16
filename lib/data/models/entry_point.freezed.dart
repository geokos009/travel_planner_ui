// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntryPoint _$EntryPointFromJson(Map<String, dynamic> json) {
  return _EntryPoint.fromJson(json);
}

/// @nodoc
mixin _$EntryPoint {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'transportation_to_city')
  List<TransportationToCity> get transportationToCity =>
      throw _privateConstructorUsedError;

  /// Serializes this EntryPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntryPointCopyWith<EntryPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryPointCopyWith<$Res> {
  factory $EntryPointCopyWith(
          EntryPoint value, $Res Function(EntryPoint) then) =
      _$EntryPointCopyWithImpl<$Res, EntryPoint>;
  @useResult
  $Res call(
      {String name,
      String type,
      String location,
      String code,
      @JsonKey(name: 'transportation_to_city')
      List<TransportationToCity> transportationToCity});
}

/// @nodoc
class _$EntryPointCopyWithImpl<$Res, $Val extends EntryPoint>
    implements $EntryPointCopyWith<$Res> {
  _$EntryPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? location = null,
    Object? code = null,
    Object? transportationToCity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      transportationToCity: null == transportationToCity
          ? _value.transportationToCity
          : transportationToCity // ignore: cast_nullable_to_non_nullable
              as List<TransportationToCity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntryPointImplCopyWith<$Res>
    implements $EntryPointCopyWith<$Res> {
  factory _$$EntryPointImplCopyWith(
          _$EntryPointImpl value, $Res Function(_$EntryPointImpl) then) =
      __$$EntryPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      String location,
      String code,
      @JsonKey(name: 'transportation_to_city')
      List<TransportationToCity> transportationToCity});
}

/// @nodoc
class __$$EntryPointImplCopyWithImpl<$Res>
    extends _$EntryPointCopyWithImpl<$Res, _$EntryPointImpl>
    implements _$$EntryPointImplCopyWith<$Res> {
  __$$EntryPointImplCopyWithImpl(
      _$EntryPointImpl _value, $Res Function(_$EntryPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? location = null,
    Object? code = null,
    Object? transportationToCity = null,
  }) {
    return _then(_$EntryPointImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      transportationToCity: null == transportationToCity
          ? _value._transportationToCity
          : transportationToCity // ignore: cast_nullable_to_non_nullable
              as List<TransportationToCity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntryPointImpl implements _EntryPoint {
  const _$EntryPointImpl(
      {required this.name,
      required this.type,
      required this.location,
      required this.code,
      @JsonKey(name: 'transportation_to_city')
      required final List<TransportationToCity> transportationToCity})
      : _transportationToCity = transportationToCity;

  factory _$EntryPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntryPointImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final String location;
  @override
  final String code;
  final List<TransportationToCity> _transportationToCity;
  @override
  @JsonKey(name: 'transportation_to_city')
  List<TransportationToCity> get transportationToCity {
    if (_transportationToCity is EqualUnmodifiableListView)
      return _transportationToCity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportationToCity);
  }

  @override
  String toString() {
    return 'EntryPoint(name: $name, type: $type, location: $location, code: $code, transportationToCity: $transportationToCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryPointImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._transportationToCity, _transportationToCity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, location, code,
      const DeepCollectionEquality().hash(_transportationToCity));

  /// Create a copy of EntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryPointImplCopyWith<_$EntryPointImpl> get copyWith =>
      __$$EntryPointImplCopyWithImpl<_$EntryPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntryPointImplToJson(
      this,
    );
  }
}

abstract class _EntryPoint implements EntryPoint {
  const factory _EntryPoint(
          {required final String name,
          required final String type,
          required final String location,
          required final String code,
          @JsonKey(name: 'transportation_to_city')
          required final List<TransportationToCity> transportationToCity}) =
      _$EntryPointImpl;

  factory _EntryPoint.fromJson(Map<String, dynamic> json) =
      _$EntryPointImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String get location;
  @override
  String get code;
  @override
  @JsonKey(name: 'transportation_to_city')
  List<TransportationToCity> get transportationToCity;

  /// Create a copy of EntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryPointImplCopyWith<_$EntryPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportationToCity _$TransportationToCityFromJson(Map<String, dynamic> json) {
  return _TransportationToCity.fromJson(json);
}

/// @nodoc
mixin _$TransportationToCity {
  String get method => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;

  /// Serializes this TransportationToCity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransportationToCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransportationToCityCopyWith<TransportationToCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportationToCityCopyWith<$Res> {
  factory $TransportationToCityCopyWith(TransportationToCity value,
          $Res Function(TransportationToCity) then) =
      _$TransportationToCityCopyWithImpl<$Res, TransportationToCity>;
  @useResult
  $Res call({String method, String duration, String cost, String frequency});
}

/// @nodoc
class _$TransportationToCityCopyWithImpl<$Res,
        $Val extends TransportationToCity>
    implements $TransportationToCityCopyWith<$Res> {
  _$TransportationToCityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransportationToCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? duration = null,
    Object? cost = null,
    Object? frequency = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportationToCityImplCopyWith<$Res>
    implements $TransportationToCityCopyWith<$Res> {
  factory _$$TransportationToCityImplCopyWith(_$TransportationToCityImpl value,
          $Res Function(_$TransportationToCityImpl) then) =
      __$$TransportationToCityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, String duration, String cost, String frequency});
}

/// @nodoc
class __$$TransportationToCityImplCopyWithImpl<$Res>
    extends _$TransportationToCityCopyWithImpl<$Res, _$TransportationToCityImpl>
    implements _$$TransportationToCityImplCopyWith<$Res> {
  __$$TransportationToCityImplCopyWithImpl(_$TransportationToCityImpl _value,
      $Res Function(_$TransportationToCityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransportationToCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? duration = null,
    Object? cost = null,
    Object? frequency = null,
  }) {
    return _then(_$TransportationToCityImpl(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportationToCityImpl implements _TransportationToCity {
  const _$TransportationToCityImpl(
      {required this.method,
      required this.duration,
      required this.cost,
      required this.frequency});

  factory _$TransportationToCityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportationToCityImplFromJson(json);

  @override
  final String method;
  @override
  final String duration;
  @override
  final String cost;
  @override
  final String frequency;

  @override
  String toString() {
    return 'TransportationToCity(method: $method, duration: $duration, cost: $cost, frequency: $frequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportationToCityImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, method, duration, cost, frequency);

  /// Create a copy of TransportationToCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportationToCityImplCopyWith<_$TransportationToCityImpl>
      get copyWith =>
          __$$TransportationToCityImplCopyWithImpl<_$TransportationToCityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportationToCityImplToJson(
      this,
    );
  }
}

abstract class _TransportationToCity implements TransportationToCity {
  const factory _TransportationToCity(
      {required final String method,
      required final String duration,
      required final String cost,
      required final String frequency}) = _$TransportationToCityImpl;

  factory _TransportationToCity.fromJson(Map<String, dynamic> json) =
      _$TransportationToCityImpl.fromJson;

  @override
  String get method;
  @override
  String get duration;
  @override
  String get cost;
  @override
  String get frequency;

  /// Create a copy of TransportationToCity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransportationToCityImplCopyWith<_$TransportationToCityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
