// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) {
  return _UserPreferences.fromJson(json);
}

/// @nodoc
mixin _$UserPreferences {
  @JsonKey(name: 'trip_duration')
  String get tripDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_style')
  String get tripStyle => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_level')
  String get budgetLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_locations')
  List<BaseLocation> get baseLocations => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry_point')
  EntryPoint get entryPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected_attractions')
  List<SelectedAttraction> get selectedAttractions =>
      throw _privateConstructorUsedError;

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPreferencesCopyWith<UserPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
          UserPreferences value, $Res Function(UserPreferences) then) =
      _$UserPreferencesCopyWithImpl<$Res, UserPreferences>;
  @useResult
  $Res call(
      {@JsonKey(name: 'trip_duration') String tripDuration,
      @JsonKey(name: 'trip_style') String tripStyle,
      @JsonKey(name: 'budget_level') String budgetLevel,
      @JsonKey(name: 'base_locations') List<BaseLocation> baseLocations,
      @JsonKey(name: 'entry_point') EntryPoint entryPoint,
      @JsonKey(name: 'selected_attractions')
      List<SelectedAttraction> selectedAttractions});

  $EntryPointCopyWith<$Res> get entryPoint;
}

/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res, $Val extends UserPreferences>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripDuration = null,
    Object? tripStyle = null,
    Object? budgetLevel = null,
    Object? baseLocations = null,
    Object? entryPoint = null,
    Object? selectedAttractions = null,
  }) {
    return _then(_value.copyWith(
      tripDuration: null == tripDuration
          ? _value.tripDuration
          : tripDuration // ignore: cast_nullable_to_non_nullable
              as String,
      tripStyle: null == tripStyle
          ? _value.tripStyle
          : tripStyle // ignore: cast_nullable_to_non_nullable
              as String,
      budgetLevel: null == budgetLevel
          ? _value.budgetLevel
          : budgetLevel // ignore: cast_nullable_to_non_nullable
              as String,
      baseLocations: null == baseLocations
          ? _value.baseLocations
          : baseLocations // ignore: cast_nullable_to_non_nullable
              as List<BaseLocation>,
      entryPoint: null == entryPoint
          ? _value.entryPoint
          : entryPoint // ignore: cast_nullable_to_non_nullable
              as EntryPoint,
      selectedAttractions: null == selectedAttractions
          ? _value.selectedAttractions
          : selectedAttractions // ignore: cast_nullable_to_non_nullable
              as List<SelectedAttraction>,
    ) as $Val);
  }

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntryPointCopyWith<$Res> get entryPoint {
    return $EntryPointCopyWith<$Res>(_value.entryPoint, (value) {
      return _then(_value.copyWith(entryPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserPreferencesImplCopyWith<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  factory _$$UserPreferencesImplCopyWith(_$UserPreferencesImpl value,
          $Res Function(_$UserPreferencesImpl) then) =
      __$$UserPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'trip_duration') String tripDuration,
      @JsonKey(name: 'trip_style') String tripStyle,
      @JsonKey(name: 'budget_level') String budgetLevel,
      @JsonKey(name: 'base_locations') List<BaseLocation> baseLocations,
      @JsonKey(name: 'entry_point') EntryPoint entryPoint,
      @JsonKey(name: 'selected_attractions')
      List<SelectedAttraction> selectedAttractions});

  @override
  $EntryPointCopyWith<$Res> get entryPoint;
}

/// @nodoc
class __$$UserPreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesCopyWithImpl<$Res, _$UserPreferencesImpl>
    implements _$$UserPreferencesImplCopyWith<$Res> {
  __$$UserPreferencesImplCopyWithImpl(
      _$UserPreferencesImpl _value, $Res Function(_$UserPreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripDuration = null,
    Object? tripStyle = null,
    Object? budgetLevel = null,
    Object? baseLocations = null,
    Object? entryPoint = null,
    Object? selectedAttractions = null,
  }) {
    return _then(_$UserPreferencesImpl(
      tripDuration: null == tripDuration
          ? _value.tripDuration
          : tripDuration // ignore: cast_nullable_to_non_nullable
              as String,
      tripStyle: null == tripStyle
          ? _value.tripStyle
          : tripStyle // ignore: cast_nullable_to_non_nullable
              as String,
      budgetLevel: null == budgetLevel
          ? _value.budgetLevel
          : budgetLevel // ignore: cast_nullable_to_non_nullable
              as String,
      baseLocations: null == baseLocations
          ? _value._baseLocations
          : baseLocations // ignore: cast_nullable_to_non_nullable
              as List<BaseLocation>,
      entryPoint: null == entryPoint
          ? _value.entryPoint
          : entryPoint // ignore: cast_nullable_to_non_nullable
              as EntryPoint,
      selectedAttractions: null == selectedAttractions
          ? _value._selectedAttractions
          : selectedAttractions // ignore: cast_nullable_to_non_nullable
              as List<SelectedAttraction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPreferencesImpl implements _UserPreferences {
  const _$UserPreferencesImpl(
      {@JsonKey(name: 'trip_duration') required this.tripDuration,
      @JsonKey(name: 'trip_style') required this.tripStyle,
      @JsonKey(name: 'budget_level') required this.budgetLevel,
      @JsonKey(name: 'base_locations')
      required final List<BaseLocation> baseLocations,
      @JsonKey(name: 'entry_point') required this.entryPoint,
      @JsonKey(name: 'selected_attractions')
      required final List<SelectedAttraction> selectedAttractions})
      : _baseLocations = baseLocations,
        _selectedAttractions = selectedAttractions;

  factory _$UserPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreferencesImplFromJson(json);

  @override
  @JsonKey(name: 'trip_duration')
  final String tripDuration;
  @override
  @JsonKey(name: 'trip_style')
  final String tripStyle;
  @override
  @JsonKey(name: 'budget_level')
  final String budgetLevel;
  final List<BaseLocation> _baseLocations;
  @override
  @JsonKey(name: 'base_locations')
  List<BaseLocation> get baseLocations {
    if (_baseLocations is EqualUnmodifiableListView) return _baseLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_baseLocations);
  }

  @override
  @JsonKey(name: 'entry_point')
  final EntryPoint entryPoint;
  final List<SelectedAttraction> _selectedAttractions;
  @override
  @JsonKey(name: 'selected_attractions')
  List<SelectedAttraction> get selectedAttractions {
    if (_selectedAttractions is EqualUnmodifiableListView)
      return _selectedAttractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAttractions);
  }

  @override
  String toString() {
    return 'UserPreferences(tripDuration: $tripDuration, tripStyle: $tripStyle, budgetLevel: $budgetLevel, baseLocations: $baseLocations, entryPoint: $entryPoint, selectedAttractions: $selectedAttractions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesImpl &&
            (identical(other.tripDuration, tripDuration) ||
                other.tripDuration == tripDuration) &&
            (identical(other.tripStyle, tripStyle) ||
                other.tripStyle == tripStyle) &&
            (identical(other.budgetLevel, budgetLevel) ||
                other.budgetLevel == budgetLevel) &&
            const DeepCollectionEquality()
                .equals(other._baseLocations, _baseLocations) &&
            (identical(other.entryPoint, entryPoint) ||
                other.entryPoint == entryPoint) &&
            const DeepCollectionEquality()
                .equals(other._selectedAttractions, _selectedAttractions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tripDuration,
      tripStyle,
      budgetLevel,
      const DeepCollectionEquality().hash(_baseLocations),
      entryPoint,
      const DeepCollectionEquality().hash(_selectedAttractions));

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      __$$UserPreferencesImplCopyWithImpl<_$UserPreferencesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPreferencesImplToJson(
      this,
    );
  }
}

abstract class _UserPreferences implements UserPreferences {
  const factory _UserPreferences(
          {@JsonKey(name: 'trip_duration') required final String tripDuration,
          @JsonKey(name: 'trip_style') required final String tripStyle,
          @JsonKey(name: 'budget_level') required final String budgetLevel,
          @JsonKey(name: 'base_locations')
          required final List<BaseLocation> baseLocations,
          @JsonKey(name: 'entry_point') required final EntryPoint entryPoint,
          @JsonKey(name: 'selected_attractions')
          required final List<SelectedAttraction> selectedAttractions}) =
      _$UserPreferencesImpl;

  factory _UserPreferences.fromJson(Map<String, dynamic> json) =
      _$UserPreferencesImpl.fromJson;

  @override
  @JsonKey(name: 'trip_duration')
  String get tripDuration;
  @override
  @JsonKey(name: 'trip_style')
  String get tripStyle;
  @override
  @JsonKey(name: 'budget_level')
  String get budgetLevel;
  @override
  @JsonKey(name: 'base_locations')
  List<BaseLocation> get baseLocations;
  @override
  @JsonKey(name: 'entry_point')
  EntryPoint get entryPoint;
  @override
  @JsonKey(name: 'selected_attractions')
  List<SelectedAttraction> get selectedAttractions;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
