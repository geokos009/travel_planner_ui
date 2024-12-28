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
  String get tripDuration => throw _privateConstructorUsedError;
  String get tripStyle => throw _privateConstructorUsedError;
  String get budgetLevel => throw _privateConstructorUsedError;
  List<BaseLocation> get baseLocations => throw _privateConstructorUsedError;
  EntryPoint get entryPoint =>
      throw _privateConstructorUsedError; // This now references the imported EntryPoint
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
      {String tripDuration,
      String tripStyle,
      String budgetLevel,
      List<BaseLocation> baseLocations,
      EntryPoint entryPoint,
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
      {String tripDuration,
      String tripStyle,
      String budgetLevel,
      List<BaseLocation> baseLocations,
      EntryPoint entryPoint,
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
      {required this.tripDuration,
      required this.tripStyle,
      required this.budgetLevel,
      required final List<BaseLocation> baseLocations,
      required this.entryPoint,
      required final List<SelectedAttraction> selectedAttractions})
      : _baseLocations = baseLocations,
        _selectedAttractions = selectedAttractions;

  factory _$UserPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreferencesImplFromJson(json);

  @override
  final String tripDuration;
  @override
  final String tripStyle;
  @override
  final String budgetLevel;
  final List<BaseLocation> _baseLocations;
  @override
  List<BaseLocation> get baseLocations {
    if (_baseLocations is EqualUnmodifiableListView) return _baseLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_baseLocations);
  }

  @override
  final EntryPoint entryPoint;
// This now references the imported EntryPoint
  final List<SelectedAttraction> _selectedAttractions;
// This now references the imported EntryPoint
  @override
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
          {required final String tripDuration,
          required final String tripStyle,
          required final String budgetLevel,
          required final List<BaseLocation> baseLocations,
          required final EntryPoint entryPoint,
          required final List<SelectedAttraction> selectedAttractions}) =
      _$UserPreferencesImpl;

  factory _UserPreferences.fromJson(Map<String, dynamic> json) =
      _$UserPreferencesImpl.fromJson;

  @override
  String get tripDuration;
  @override
  String get tripStyle;
  @override
  String get budgetLevel;
  @override
  List<BaseLocation> get baseLocations;
  @override
  EntryPoint get entryPoint; // This now references the imported EntryPoint
  @override
  List<SelectedAttraction> get selectedAttractions;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseLocation _$BaseLocationFromJson(Map<String, dynamic> json) {
  return _BaseLocation.fromJson(json);
}

/// @nodoc
mixin _$BaseLocation {
  String get location => throw _privateConstructorUsedError;
  int get nights => throw _privateConstructorUsedError;

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
  $Res call({String location, int nights});
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
    Object? location = null,
    Object? nights = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({String location, int nights});
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
    Object? location = null,
    Object? nights = null,
  }) {
    return _then(_$BaseLocationImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseLocationImpl implements _BaseLocation {
  const _$BaseLocationImpl({required this.location, required this.nights});

  factory _$BaseLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseLocationImplFromJson(json);

  @override
  final String location;
  @override
  final int nights;

  @override
  String toString() {
    return 'BaseLocation(location: $location, nights: $nights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseLocationImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.nights, nights) || other.nights == nights));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, nights);

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
      {required final String location,
      required final int nights}) = _$BaseLocationImpl;

  factory _BaseLocation.fromJson(Map<String, dynamic> json) =
      _$BaseLocationImpl.fromJson;

  @override
  String get location;
  @override
  int get nights;

  /// Create a copy of BaseLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseLocationImplCopyWith<_$BaseLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
