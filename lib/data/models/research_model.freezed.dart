// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'research_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResearchModel _$ResearchModelFromJson(Map<String, dynamic> json) {
  return _ResearchModel.fromJson(json);
}

/// @nodoc
mixin _$ResearchModel {
  bool get error => throw _privateConstructorUsedError;
  ResearchData get data => throw _privateConstructorUsedError;

  /// Serializes this ResearchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResearchModelCopyWith<ResearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchModelCopyWith<$Res> {
  factory $ResearchModelCopyWith(
          ResearchModel value, $Res Function(ResearchModel) then) =
      _$ResearchModelCopyWithImpl<$Res, ResearchModel>;
  @useResult
  $Res call({bool error, ResearchData data});

  $ResearchDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ResearchModelCopyWithImpl<$Res, $Val extends ResearchModel>
    implements $ResearchModelCopyWith<$Res> {
  _$ResearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResearchModel
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
              as ResearchData,
    ) as $Val);
  }

  /// Create a copy of ResearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResearchDataCopyWith<$Res> get data {
    return $ResearchDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResearchModelImplCopyWith<$Res>
    implements $ResearchModelCopyWith<$Res> {
  factory _$$ResearchModelImplCopyWith(
          _$ResearchModelImpl value, $Res Function(_$ResearchModelImpl) then) =
      __$$ResearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, ResearchData data});

  @override
  $ResearchDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResearchModelImplCopyWithImpl<$Res>
    extends _$ResearchModelCopyWithImpl<$Res, _$ResearchModelImpl>
    implements _$$ResearchModelImplCopyWith<$Res> {
  __$$ResearchModelImplCopyWithImpl(
      _$ResearchModelImpl _value, $Res Function(_$ResearchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = null,
  }) {
    return _then(_$ResearchModelImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResearchData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResearchModelImpl implements _ResearchModel {
  const _$ResearchModelImpl({required this.error, required this.data});

  factory _$ResearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResearchModelImplFromJson(json);

  @override
  final bool error;
  @override
  final ResearchData data;

  @override
  String toString() {
    return 'ResearchModel(error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, data);

  /// Create a copy of ResearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchModelImplCopyWith<_$ResearchModelImpl> get copyWith =>
      __$$ResearchModelImplCopyWithImpl<_$ResearchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResearchModelImplToJson(
      this,
    );
  }
}

abstract class _ResearchModel implements ResearchModel {
  const factory _ResearchModel(
      {required final bool error,
      required final ResearchData data}) = _$ResearchModelImpl;

  factory _ResearchModel.fromJson(Map<String, dynamic> json) =
      _$ResearchModelImpl.fromJson;

  @override
  bool get error;
  @override
  ResearchData get data;

  /// Create a copy of ResearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResearchModelImplCopyWith<_$ResearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResearchData _$ResearchDataFromJson(Map<String, dynamic> json) {
  return _ResearchData.fromJson(json);
}

/// @nodoc
mixin _$ResearchData {
  ResearchContent get research => throw _privateConstructorUsedError;

  /// Serializes this ResearchData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResearchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResearchDataCopyWith<ResearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchDataCopyWith<$Res> {
  factory $ResearchDataCopyWith(
          ResearchData value, $Res Function(ResearchData) then) =
      _$ResearchDataCopyWithImpl<$Res, ResearchData>;
  @useResult
  $Res call({ResearchContent research});

  $ResearchContentCopyWith<$Res> get research;
}

/// @nodoc
class _$ResearchDataCopyWithImpl<$Res, $Val extends ResearchData>
    implements $ResearchDataCopyWith<$Res> {
  _$ResearchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResearchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? research = null,
  }) {
    return _then(_value.copyWith(
      research: null == research
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as ResearchContent,
    ) as $Val);
  }

  /// Create a copy of ResearchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResearchContentCopyWith<$Res> get research {
    return $ResearchContentCopyWith<$Res>(_value.research, (value) {
      return _then(_value.copyWith(research: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResearchDataImplCopyWith<$Res>
    implements $ResearchDataCopyWith<$Res> {
  factory _$$ResearchDataImplCopyWith(
          _$ResearchDataImpl value, $Res Function(_$ResearchDataImpl) then) =
      __$$ResearchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResearchContent research});

  @override
  $ResearchContentCopyWith<$Res> get research;
}

/// @nodoc
class __$$ResearchDataImplCopyWithImpl<$Res>
    extends _$ResearchDataCopyWithImpl<$Res, _$ResearchDataImpl>
    implements _$$ResearchDataImplCopyWith<$Res> {
  __$$ResearchDataImplCopyWithImpl(
      _$ResearchDataImpl _value, $Res Function(_$ResearchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResearchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? research = null,
  }) {
    return _then(_$ResearchDataImpl(
      research: null == research
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as ResearchContent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResearchDataImpl implements _ResearchData {
  const _$ResearchDataImpl({required this.research});

  factory _$ResearchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResearchDataImplFromJson(json);

  @override
  final ResearchContent research;

  @override
  String toString() {
    return 'ResearchData(research: $research)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchDataImpl &&
            (identical(other.research, research) ||
                other.research == research));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, research);

  /// Create a copy of ResearchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchDataImplCopyWith<_$ResearchDataImpl> get copyWith =>
      __$$ResearchDataImplCopyWithImpl<_$ResearchDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResearchDataImplToJson(
      this,
    );
  }
}

abstract class _ResearchData implements ResearchData {
  const factory _ResearchData({required final ResearchContent research}) =
      _$ResearchDataImpl;

  factory _ResearchData.fromJson(Map<String, dynamic> json) =
      _$ResearchDataImpl.fromJson;

  @override
  ResearchContent get research;

  /// Create a copy of ResearchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResearchDataImplCopyWith<_$ResearchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResearchContent _$ResearchContentFromJson(Map<String, dynamic> json) {
  return _ResearchContent.fromJson(json);
}

/// @nodoc
mixin _$ResearchContent {
  String get destination => throw _privateConstructorUsedError;
  ResearchDetails get data => throw _privateConstructorUsedError;

  /// Serializes this ResearchContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResearchContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResearchContentCopyWith<ResearchContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchContentCopyWith<$Res> {
  factory $ResearchContentCopyWith(
          ResearchContent value, $Res Function(ResearchContent) then) =
      _$ResearchContentCopyWithImpl<$Res, ResearchContent>;
  @useResult
  $Res call({String destination, ResearchDetails data});

  $ResearchDetailsCopyWith<$Res> get data;
}

/// @nodoc
class _$ResearchContentCopyWithImpl<$Res, $Val extends ResearchContent>
    implements $ResearchContentCopyWith<$Res> {
  _$ResearchContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResearchContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResearchDetails,
    ) as $Val);
  }

  /// Create a copy of ResearchContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResearchDetailsCopyWith<$Res> get data {
    return $ResearchDetailsCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResearchContentImplCopyWith<$Res>
    implements $ResearchContentCopyWith<$Res> {
  factory _$$ResearchContentImplCopyWith(_$ResearchContentImpl value,
          $Res Function(_$ResearchContentImpl) then) =
      __$$ResearchContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String destination, ResearchDetails data});

  @override
  $ResearchDetailsCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResearchContentImplCopyWithImpl<$Res>
    extends _$ResearchContentCopyWithImpl<$Res, _$ResearchContentImpl>
    implements _$$ResearchContentImplCopyWith<$Res> {
  __$$ResearchContentImplCopyWithImpl(
      _$ResearchContentImpl _value, $Res Function(_$ResearchContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResearchContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? data = null,
  }) {
    return _then(_$ResearchContentImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResearchDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResearchContentImpl implements _ResearchContent {
  const _$ResearchContentImpl({required this.destination, required this.data});

  factory _$ResearchContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResearchContentImplFromJson(json);

  @override
  final String destination;
  @override
  final ResearchDetails data;

  @override
  String toString() {
    return 'ResearchContent(destination: $destination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchContentImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, destination, data);

  /// Create a copy of ResearchContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchContentImplCopyWith<_$ResearchContentImpl> get copyWith =>
      __$$ResearchContentImplCopyWithImpl<_$ResearchContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResearchContentImplToJson(
      this,
    );
  }
}

abstract class _ResearchContent implements ResearchContent {
  const factory _ResearchContent(
      {required final String destination,
      required final ResearchDetails data}) = _$ResearchContentImpl;

  factory _ResearchContent.fromJson(Map<String, dynamic> json) =
      _$ResearchContentImpl.fromJson;

  @override
  String get destination;
  @override
  ResearchDetails get data;

  /// Create a copy of ResearchContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResearchContentImplCopyWith<_$ResearchContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResearchDetails _$ResearchDetailsFromJson(Map<String, dynamic> json) {
  return _ResearchDetails.fromJson(json);
}

/// @nodoc
mixin _$ResearchDetails {
  @JsonKey(fromJson: _researchFromJson, toJson: _researchToJson)
  ResearchInfo get research => throw _privateConstructorUsedError;

  /// Serializes this ResearchDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResearchDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResearchDetailsCopyWith<ResearchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchDetailsCopyWith<$Res> {
  factory $ResearchDetailsCopyWith(
          ResearchDetails value, $Res Function(ResearchDetails) then) =
      _$ResearchDetailsCopyWithImpl<$Res, ResearchDetails>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _researchFromJson, toJson: _researchToJson)
      ResearchInfo research});

  $ResearchInfoCopyWith<$Res> get research;
}

/// @nodoc
class _$ResearchDetailsCopyWithImpl<$Res, $Val extends ResearchDetails>
    implements $ResearchDetailsCopyWith<$Res> {
  _$ResearchDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResearchDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? research = null,
  }) {
    return _then(_value.copyWith(
      research: null == research
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as ResearchInfo,
    ) as $Val);
  }

  /// Create a copy of ResearchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResearchInfoCopyWith<$Res> get research {
    return $ResearchInfoCopyWith<$Res>(_value.research, (value) {
      return _then(_value.copyWith(research: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResearchDetailsImplCopyWith<$Res>
    implements $ResearchDetailsCopyWith<$Res> {
  factory _$$ResearchDetailsImplCopyWith(_$ResearchDetailsImpl value,
          $Res Function(_$ResearchDetailsImpl) then) =
      __$$ResearchDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _researchFromJson, toJson: _researchToJson)
      ResearchInfo research});

  @override
  $ResearchInfoCopyWith<$Res> get research;
}

/// @nodoc
class __$$ResearchDetailsImplCopyWithImpl<$Res>
    extends _$ResearchDetailsCopyWithImpl<$Res, _$ResearchDetailsImpl>
    implements _$$ResearchDetailsImplCopyWith<$Res> {
  __$$ResearchDetailsImplCopyWithImpl(
      _$ResearchDetailsImpl _value, $Res Function(_$ResearchDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResearchDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? research = null,
  }) {
    return _then(_$ResearchDetailsImpl(
      research: null == research
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as ResearchInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResearchDetailsImpl implements _ResearchDetails {
  const _$ResearchDetailsImpl(
      {@JsonKey(fromJson: _researchFromJson, toJson: _researchToJson)
      required this.research});

  factory _$ResearchDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResearchDetailsImplFromJson(json);

  @override
  @JsonKey(fromJson: _researchFromJson, toJson: _researchToJson)
  final ResearchInfo research;

  @override
  String toString() {
    return 'ResearchDetails(research: $research)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchDetailsImpl &&
            (identical(other.research, research) ||
                other.research == research));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, research);

  /// Create a copy of ResearchDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchDetailsImplCopyWith<_$ResearchDetailsImpl> get copyWith =>
      __$$ResearchDetailsImplCopyWithImpl<_$ResearchDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResearchDetailsImplToJson(
      this,
    );
  }
}

abstract class _ResearchDetails implements ResearchDetails {
  const factory _ResearchDetails(
      {@JsonKey(fromJson: _researchFromJson, toJson: _researchToJson)
      required final ResearchInfo research}) = _$ResearchDetailsImpl;

  factory _ResearchDetails.fromJson(Map<String, dynamic> json) =
      _$ResearchDetailsImpl.fromJson;

  @override
  @JsonKey(fromJson: _researchFromJson, toJson: _researchToJson)
  ResearchInfo get research;

  /// Create a copy of ResearchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResearchDetailsImplCopyWith<_$ResearchDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResearchInfo _$ResearchInfoFromJson(Map<String, dynamic> json) {
  return _ResearchInfo.fromJson(json);
}

/// @nodoc
mixin _$ResearchInfo {
  List<EntryPoint> get entryPoints => throw _privateConstructorUsedError;
  List<Region> get regions => throw _privateConstructorUsedError;
  Map<String, List<Attraction>> get attractions =>
      throw _privateConstructorUsedError;

  /// Serializes this ResearchInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResearchInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResearchInfoCopyWith<ResearchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchInfoCopyWith<$Res> {
  factory $ResearchInfoCopyWith(
          ResearchInfo value, $Res Function(ResearchInfo) then) =
      _$ResearchInfoCopyWithImpl<$Res, ResearchInfo>;
  @useResult
  $Res call(
      {List<EntryPoint> entryPoints,
      List<Region> regions,
      Map<String, List<Attraction>> attractions});
}

/// @nodoc
class _$ResearchInfoCopyWithImpl<$Res, $Val extends ResearchInfo>
    implements $ResearchInfoCopyWith<$Res> {
  _$ResearchInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResearchInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryPoints = null,
    Object? regions = null,
    Object? attractions = null,
  }) {
    return _then(_value.copyWith(
      entryPoints: null == entryPoints
          ? _value.entryPoints
          : entryPoints // ignore: cast_nullable_to_non_nullable
              as List<EntryPoint>,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>,
      attractions: null == attractions
          ? _value.attractions
          : attractions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Attraction>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResearchInfoImplCopyWith<$Res>
    implements $ResearchInfoCopyWith<$Res> {
  factory _$$ResearchInfoImplCopyWith(
          _$ResearchInfoImpl value, $Res Function(_$ResearchInfoImpl) then) =
      __$$ResearchInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EntryPoint> entryPoints,
      List<Region> regions,
      Map<String, List<Attraction>> attractions});
}

/// @nodoc
class __$$ResearchInfoImplCopyWithImpl<$Res>
    extends _$ResearchInfoCopyWithImpl<$Res, _$ResearchInfoImpl>
    implements _$$ResearchInfoImplCopyWith<$Res> {
  __$$ResearchInfoImplCopyWithImpl(
      _$ResearchInfoImpl _value, $Res Function(_$ResearchInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResearchInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryPoints = null,
    Object? regions = null,
    Object? attractions = null,
  }) {
    return _then(_$ResearchInfoImpl(
      entryPoints: null == entryPoints
          ? _value._entryPoints
          : entryPoints // ignore: cast_nullable_to_non_nullable
              as List<EntryPoint>,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>,
      attractions: null == attractions
          ? _value._attractions
          : attractions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Attraction>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResearchInfoImpl implements _ResearchInfo {
  const _$ResearchInfoImpl(
      {final List<EntryPoint> entryPoints = const [],
      final List<Region> regions = const [],
      final Map<String, List<Attraction>> attractions = const {}})
      : _entryPoints = entryPoints,
        _regions = regions,
        _attractions = attractions;

  factory _$ResearchInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResearchInfoImplFromJson(json);

  final List<EntryPoint> _entryPoints;
  @override
  @JsonKey()
  List<EntryPoint> get entryPoints {
    if (_entryPoints is EqualUnmodifiableListView) return _entryPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entryPoints);
  }

  final List<Region> _regions;
  @override
  @JsonKey()
  List<Region> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  final Map<String, List<Attraction>> _attractions;
  @override
  @JsonKey()
  Map<String, List<Attraction>> get attractions {
    if (_attractions is EqualUnmodifiableMapView) return _attractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attractions);
  }

  @override
  String toString() {
    return 'ResearchInfo(entryPoints: $entryPoints, regions: $regions, attractions: $attractions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._entryPoints, _entryPoints) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            const DeepCollectionEquality()
                .equals(other._attractions, _attractions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_entryPoints),
      const DeepCollectionEquality().hash(_regions),
      const DeepCollectionEquality().hash(_attractions));

  /// Create a copy of ResearchInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchInfoImplCopyWith<_$ResearchInfoImpl> get copyWith =>
      __$$ResearchInfoImplCopyWithImpl<_$ResearchInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResearchInfoImplToJson(
      this,
    );
  }
}

abstract class _ResearchInfo implements ResearchInfo {
  const factory _ResearchInfo(
      {final List<EntryPoint> entryPoints,
      final List<Region> regions,
      final Map<String, List<Attraction>> attractions}) = _$ResearchInfoImpl;

  factory _ResearchInfo.fromJson(Map<String, dynamic> json) =
      _$ResearchInfoImpl.fromJson;

  @override
  List<EntryPoint> get entryPoints;
  @override
  List<Region> get regions;
  @override
  Map<String, List<Attraction>> get attractions;

  /// Create a copy of ResearchInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResearchInfoImplCopyWith<_$ResearchInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommended_stay')
  Map<String, String> get recommendedStay => throw _privateConstructorUsedError;
  List<String> get highlights => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_for')
  List<String> get baseFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'typical_order')
  String get typicalOrder => throw _privateConstructorUsedError;

  /// Serializes this Region to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
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
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Region
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
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
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
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Region
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
    return _then(_$RegionImpl(
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
class _$RegionImpl implements _Region {
  const _$RegionImpl(
      {required this.name,
      required this.description,
      @JsonKey(name: 'recommended_stay')
      required final Map<String, String> recommendedStay,
      final List<String> highlights = const [],
      @JsonKey(name: 'base_for') final List<String> baseFor = const [],
      @JsonKey(name: 'typical_order') required this.typicalOrder})
      : _recommendedStay = recommendedStay,
        _highlights = highlights,
        _baseFor = baseFor;

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

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
  @JsonKey()
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
    return 'Region(name: $name, description: $description, recommendedStay: $recommendedStay, highlights: $highlights, baseFor: $baseFor, typicalOrder: $typicalOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
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

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region(
          {required final String name,
          required final String description,
          @JsonKey(name: 'recommended_stay')
          required final Map<String, String> recommendedStay,
          final List<String> highlights,
          @JsonKey(name: 'base_for') final List<String> baseFor,
          @JsonKey(name: 'typical_order') required final String typicalOrder}) =
      _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

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

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  List<Transportation> get transportationToCity =>
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
      List<Transportation> transportationToCity});
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
              as List<Transportation>,
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
      List<Transportation> transportationToCity});
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
              as List<Transportation>,
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
      required final List<Transportation> transportationToCity})
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
  final List<Transportation> _transportationToCity;
  @override
  @JsonKey(name: 'transportation_to_city')
  List<Transportation> get transportationToCity {
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
          required final List<Transportation> transportationToCity}) =
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
  List<Transportation> get transportationToCity;

  /// Create a copy of EntryPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryPointImplCopyWith<_$EntryPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transportation _$TransportationFromJson(Map<String, dynamic> json) {
  return _Transportation.fromJson(json);
}

/// @nodoc
mixin _$Transportation {
  String get method => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;

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
  $Res call({String method, String duration, String cost, String frequency});
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
abstract class _$$TransportationImplCopyWith<$Res>
    implements $TransportationCopyWith<$Res> {
  factory _$$TransportationImplCopyWith(_$TransportationImpl value,
          $Res Function(_$TransportationImpl) then) =
      __$$TransportationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, String duration, String cost, String frequency});
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
    Object? duration = null,
    Object? cost = null,
    Object? frequency = null,
  }) {
    return _then(_$TransportationImpl(
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
class _$TransportationImpl implements _Transportation {
  const _$TransportationImpl(
      {required this.method,
      required this.duration,
      required this.cost,
      required this.frequency});

  factory _$TransportationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportationImplFromJson(json);

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
    return 'Transportation(method: $method, duration: $duration, cost: $cost, frequency: $frequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportationImpl &&
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
      required final String duration,
      required final String cost,
      required final String frequency}) = _$TransportationImpl;

  factory _Transportation.fromJson(Map<String, dynamic> json) =
      _$TransportationImpl.fromJson;

  @override
  String get method;
  @override
  String get duration;
  @override
  String get cost;
  @override
  String get frequency;

  /// Create a copy of Transportation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransportationImplCopyWith<_$TransportationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attraction _$AttractionFromJson(Map<String, dynamic> json) {
  return _Attraction.fromJson(json);
}

/// @nodoc
mixin _$Attraction {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_category')
  String get subCategory => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_required')
  String get timeRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_timing')
  String get bestTiming => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_range')
  String get costRange => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_count')
  String get reviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'must_see')
  bool get mustSee => throw _privateConstructorUsedError;

  /// Serializes this Attraction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttractionCopyWith<Attraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttractionCopyWith<$Res> {
  factory $AttractionCopyWith(
          Attraction value, $Res Function(Attraction) then) =
      _$AttractionCopyWithImpl<$Res, Attraction>;
  @useResult
  $Res call(
      {String name,
      String region,
      String category,
      @JsonKey(name: 'sub_category') String subCategory,
      String description,
      @JsonKey(name: 'time_required') String timeRequired,
      @JsonKey(name: 'best_timing') String bestTiming,
      @JsonKey(name: 'cost_range') String costRange,
      String rating,
      @JsonKey(name: 'review_count') String reviewCount,
      @JsonKey(name: 'must_see') bool mustSee});
}

/// @nodoc
class _$AttractionCopyWithImpl<$Res, $Val extends Attraction>
    implements $AttractionCopyWith<$Res> {
  _$AttractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? category = null,
    Object? subCategory = null,
    Object? description = null,
    Object? timeRequired = null,
    Object? bestTiming = null,
    Object? costRange = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? mustSee = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as String,
      bestTiming: null == bestTiming
          ? _value.bestTiming
          : bestTiming // ignore: cast_nullable_to_non_nullable
              as String,
      costRange: null == costRange
          ? _value.costRange
          : costRange // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as String,
      mustSee: null == mustSee
          ? _value.mustSee
          : mustSee // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttractionImplCopyWith<$Res>
    implements $AttractionCopyWith<$Res> {
  factory _$$AttractionImplCopyWith(
          _$AttractionImpl value, $Res Function(_$AttractionImpl) then) =
      __$$AttractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String region,
      String category,
      @JsonKey(name: 'sub_category') String subCategory,
      String description,
      @JsonKey(name: 'time_required') String timeRequired,
      @JsonKey(name: 'best_timing') String bestTiming,
      @JsonKey(name: 'cost_range') String costRange,
      String rating,
      @JsonKey(name: 'review_count') String reviewCount,
      @JsonKey(name: 'must_see') bool mustSee});
}

/// @nodoc
class __$$AttractionImplCopyWithImpl<$Res>
    extends _$AttractionCopyWithImpl<$Res, _$AttractionImpl>
    implements _$$AttractionImplCopyWith<$Res> {
  __$$AttractionImplCopyWithImpl(
      _$AttractionImpl _value, $Res Function(_$AttractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? category = null,
    Object? subCategory = null,
    Object? description = null,
    Object? timeRequired = null,
    Object? bestTiming = null,
    Object? costRange = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? mustSee = null,
  }) {
    return _then(_$AttractionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as String,
      bestTiming: null == bestTiming
          ? _value.bestTiming
          : bestTiming // ignore: cast_nullable_to_non_nullable
              as String,
      costRange: null == costRange
          ? _value.costRange
          : costRange // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as String,
      mustSee: null == mustSee
          ? _value.mustSee
          : mustSee // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttractionImpl implements _Attraction {
  const _$AttractionImpl(
      {required this.name,
      required this.region,
      required this.category,
      @JsonKey(name: 'sub_category') required this.subCategory,
      required this.description,
      @JsonKey(name: 'time_required') required this.timeRequired,
      @JsonKey(name: 'best_timing') required this.bestTiming,
      @JsonKey(name: 'cost_range') required this.costRange,
      required this.rating,
      @JsonKey(name: 'review_count') required this.reviewCount,
      @JsonKey(name: 'must_see') required this.mustSee});

  factory _$AttractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttractionImplFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String category;
  @override
  @JsonKey(name: 'sub_category')
  final String subCategory;
  @override
  final String description;
  @override
  @JsonKey(name: 'time_required')
  final String timeRequired;
  @override
  @JsonKey(name: 'best_timing')
  final String bestTiming;
  @override
  @JsonKey(name: 'cost_range')
  final String costRange;
  @override
  final String rating;
  @override
  @JsonKey(name: 'review_count')
  final String reviewCount;
  @override
  @JsonKey(name: 'must_see')
  final bool mustSee;

  @override
  String toString() {
    return 'Attraction(name: $name, region: $region, category: $category, subCategory: $subCategory, description: $description, timeRequired: $timeRequired, bestTiming: $bestTiming, costRange: $costRange, rating: $rating, reviewCount: $reviewCount, mustSee: $mustSee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttractionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timeRequired, timeRequired) ||
                other.timeRequired == timeRequired) &&
            (identical(other.bestTiming, bestTiming) ||
                other.bestTiming == bestTiming) &&
            (identical(other.costRange, costRange) ||
                other.costRange == costRange) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.mustSee, mustSee) || other.mustSee == mustSee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      region,
      category,
      subCategory,
      description,
      timeRequired,
      bestTiming,
      costRange,
      rating,
      reviewCount,
      mustSee);

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttractionImplCopyWith<_$AttractionImpl> get copyWith =>
      __$$AttractionImplCopyWithImpl<_$AttractionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttractionImplToJson(
      this,
    );
  }
}

abstract class _Attraction implements Attraction {
  const factory _Attraction(
          {required final String name,
          required final String region,
          required final String category,
          @JsonKey(name: 'sub_category') required final String subCategory,
          required final String description,
          @JsonKey(name: 'time_required') required final String timeRequired,
          @JsonKey(name: 'best_timing') required final String bestTiming,
          @JsonKey(name: 'cost_range') required final String costRange,
          required final String rating,
          @JsonKey(name: 'review_count') required final String reviewCount,
          @JsonKey(name: 'must_see') required final bool mustSee}) =
      _$AttractionImpl;

  factory _Attraction.fromJson(Map<String, dynamic> json) =
      _$AttractionImpl.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get category;
  @override
  @JsonKey(name: 'sub_category')
  String get subCategory;
  @override
  String get description;
  @override
  @JsonKey(name: 'time_required')
  String get timeRequired;
  @override
  @JsonKey(name: 'best_timing')
  String get bestTiming;
  @override
  @JsonKey(name: 'cost_range')
  String get costRange;
  @override
  String get rating;
  @override
  @JsonKey(name: 'review_count')
  String get reviewCount;
  @override
  @JsonKey(name: 'must_see')
  bool get mustSee;

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttractionImplCopyWith<_$AttractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
