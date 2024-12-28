// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_attraction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedAttraction _$SelectedAttractionFromJson(Map<String, dynamic> json) {
  return _SelectedAttraction.fromJson(json);
}

/// @nodoc
mixin _$SelectedAttraction {
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get bestTiming => throw _privateConstructorUsedError;

  /// Serializes this SelectedAttraction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedAttraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedAttractionCopyWith<SelectedAttraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedAttractionCopyWith<$Res> {
  factory $SelectedAttractionCopyWith(
          SelectedAttraction value, $Res Function(SelectedAttraction) then) =
      _$SelectedAttractionCopyWithImpl<$Res, SelectedAttraction>;
  @useResult
  $Res call({String name, String category, String duration, String bestTiming});
}

/// @nodoc
class _$SelectedAttractionCopyWithImpl<$Res, $Val extends SelectedAttraction>
    implements $SelectedAttractionCopyWith<$Res> {
  _$SelectedAttractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedAttraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? duration = null,
    Object? bestTiming = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      bestTiming: null == bestTiming
          ? _value.bestTiming
          : bestTiming // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedAttractionImplCopyWith<$Res>
    implements $SelectedAttractionCopyWith<$Res> {
  factory _$$SelectedAttractionImplCopyWith(_$SelectedAttractionImpl value,
          $Res Function(_$SelectedAttractionImpl) then) =
      __$$SelectedAttractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String category, String duration, String bestTiming});
}

/// @nodoc
class __$$SelectedAttractionImplCopyWithImpl<$Res>
    extends _$SelectedAttractionCopyWithImpl<$Res, _$SelectedAttractionImpl>
    implements _$$SelectedAttractionImplCopyWith<$Res> {
  __$$SelectedAttractionImplCopyWithImpl(_$SelectedAttractionImpl _value,
      $Res Function(_$SelectedAttractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedAttraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? duration = null,
    Object? bestTiming = null,
  }) {
    return _then(_$SelectedAttractionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      bestTiming: null == bestTiming
          ? _value.bestTiming
          : bestTiming // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedAttractionImpl implements _SelectedAttraction {
  const _$SelectedAttractionImpl(
      {required this.name,
      required this.category,
      required this.duration,
      required this.bestTiming});

  factory _$SelectedAttractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedAttractionImplFromJson(json);

  @override
  final String name;
  @override
  final String category;
  @override
  final String duration;
  @override
  final String bestTiming;

  @override
  String toString() {
    return 'SelectedAttraction(name: $name, category: $category, duration: $duration, bestTiming: $bestTiming)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedAttractionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.bestTiming, bestTiming) ||
                other.bestTiming == bestTiming));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, category, duration, bestTiming);

  /// Create a copy of SelectedAttraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedAttractionImplCopyWith<_$SelectedAttractionImpl> get copyWith =>
      __$$SelectedAttractionImplCopyWithImpl<_$SelectedAttractionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedAttractionImplToJson(
      this,
    );
  }
}

abstract class _SelectedAttraction implements SelectedAttraction {
  const factory _SelectedAttraction(
      {required final String name,
      required final String category,
      required final String duration,
      required final String bestTiming}) = _$SelectedAttractionImpl;

  factory _SelectedAttraction.fromJson(Map<String, dynamic> json) =
      _$SelectedAttractionImpl.fromJson;

  @override
  String get name;
  @override
  String get category;
  @override
  String get duration;
  @override
  String get bestTiming;

  /// Create a copy of SelectedAttraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedAttractionImplCopyWith<_$SelectedAttractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
