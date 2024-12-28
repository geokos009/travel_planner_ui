// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseLocation _$BaseLocationFromJson(Map<String, dynamic> json) {
  return _BaseLocation.fromJson(json);
}

/// @nodoc
mixin _$BaseLocation {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommended_stay')
  Map<String, String> get recommendedStay => throw _privateConstructorUsedError;
  List<String> get highlights => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_for')
  List<String> get baseFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'typical_order')
  String get typicalOrder => throw _privateConstructorUsedError;

  /// Serializes this BaseLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseLocationCopyWith<BaseLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseLocationCopyWith<$Res> {
  factory $BaseLocationCopyWith(
          BaseLocation value, $Res Function(BaseLocation) then) =
      _$BaseLocationCopyWithImpl<$Res, BaseLocation>;
  @useResult
  $Res call(
      {String name,
      String description,
      @JsonKey(name: 'recommended_stay') Map<String, String> recommendedStay,
      List<String> highlights,
      @JsonKey(name: 'base_for') List<String> baseFor,
      @JsonKey(name: 'typical_order') String typicalOrder});
}

/// @nodoc
class _$BaseLocationCopyWithImpl<$Res, $Val extends BaseLocation>
    implements $BaseLocationCopyWith<$Res> {
  _$BaseLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? recommendedStay = null,
    Object? highlights = null,
    Object? baseFor = null,
    Object? typicalOrder = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedStay: null == recommendedStay
          ? _value.recommendedStay
          : recommendedStay // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      baseFor: null == baseFor
          ? _value.baseFor
          : baseFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      typicalOrder: null == typicalOrder
          ? _value.typicalOrder
          : typicalOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseLocationImplCopyWith<$Res>
    implements $BaseLocationCopyWith<$Res> {
  factory _$$BaseLocationImplCopyWith(
          _$BaseLocationImpl value, $Res Function(_$BaseLocationImpl) then) =
      __$$BaseLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      @JsonKey(name: 'recommended_stay') Map<String, String> recommendedStay,
      List<String> highlights,
      @JsonKey(name: 'base_for') List<String> baseFor,
      @JsonKey(name: 'typical_order') String typicalOrder});
}

/// @nodoc
class __$$BaseLocationImplCopyWithImpl<$Res>
    extends _$BaseLocationCopyWithImpl<$Res, _$BaseLocationImpl>
    implements _$$BaseLocationImplCopyWith<$Res> {
  __$$BaseLocationImplCopyWithImpl(
      _$BaseLocationImpl _value, $Res Function(_$BaseLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? recommendedStay = null,
    Object? highlights = null,
    Object? baseFor = null,
    Object? typicalOrder = null,
  }) {
    return _then(_$BaseLocationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedStay: null == recommendedStay
          ? _value._recommendedStay
          : recommendedStay // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      highlights: null == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      baseFor: null == baseFor
          ? _value._baseFor
          : baseFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      typicalOrder: null == typicalOrder
          ? _value.typicalOrder
          : typicalOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseLocationImpl implements _BaseLocation {
  const _$BaseLocationImpl(
      {required this.name,
      required this.description,
      @JsonKey(name: 'recommended_stay')
      required final Map<String, String> recommendedStay,
      required final List<String> highlights,
      @JsonKey(name: 'base_for') required final List<String> baseFor,
      @JsonKey(name: 'typical_order') required this.typicalOrder})
      : _recommendedStay = recommendedStay,
        _highlights = highlights,
        _baseFor = baseFor;

  factory _$BaseLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseLocationImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  final Map<String, String> _recommendedStay;
  @override
  @JsonKey(name: 'recommended_stay')
  Map<String, String> get recommendedStay {
    if (_recommendedStay is EqualUnmodifiableMapView) return _recommendedStay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recommendedStay);
  }

  final List<String> _highlights;
  @override
  List<String> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  final List<String> _baseFor;
  @override
  @JsonKey(name: 'base_for')
  List<String> get baseFor {
    if (_baseFor is EqualUnmodifiableListView) return _baseFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_baseFor);
  }

  @override
  @JsonKey(name: 'typical_order')
  final String typicalOrder;

  @override
  String toString() {
    return 'BaseLocation(name: $name, description: $description, recommendedStay: $recommendedStay, highlights: $highlights, baseFor: $baseFor, typicalOrder: $typicalOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._recommendedStay, _recommendedStay) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights) &&
            const DeepCollectionEquality().equals(other._baseFor, _baseFor) &&
            (identical(other.typicalOrder, typicalOrder) ||
                other.typicalOrder == typicalOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      const DeepCollectionEquality().hash(_recommendedStay),
      const DeepCollectionEquality().hash(_highlights),
      const DeepCollectionEquality().hash(_baseFor),
      typicalOrder);

  /// Create a copy of BaseLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseLocationImplCopyWith<_$BaseLocationImpl> get copyWith =>
      __$$BaseLocationImplCopyWithImpl<_$BaseLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseLocationImplToJson(
      this,
    );
  }
}

abstract class _BaseLocation implements BaseLocation {
  const factory _BaseLocation(
          {required final String name,
          required final String description,
          @JsonKey(name: 'recommended_stay')
          required final Map<String, String> recommendedStay,
          required final List<String> highlights,
          @JsonKey(name: 'base_for') required final List<String> baseFor,
          @JsonKey(name: 'typical_order') required final String typicalOrder}) =
      _$BaseLocationImpl;

  factory _BaseLocation.fromJson(Map<String, dynamic> json) =
      _$BaseLocationImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'recommended_stay')
  Map<String, String> get recommendedStay;
  @override
  List<String> get highlights;
  @override
  @JsonKey(name: 'base_for')
  List<String> get baseFor;
  @override
  @JsonKey(name: 'typical_order')
  String get typicalOrder;

  /// Create a copy of BaseLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseLocationImplCopyWith<_$BaseLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
