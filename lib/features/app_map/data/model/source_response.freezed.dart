// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceResponse _$SourceResponseFromJson(Map<String, dynamic> json) {
  return _SourceResponse.fromJson(json);
}

/// @nodoc
mixin _$SourceResponse {
  String? get type => throw _privateConstructorUsedError;
  Properties? get properties => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceResponseCopyWith<SourceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceResponseCopyWith<$Res> {
  factory $SourceResponseCopyWith(
          SourceResponse value, $Res Function(SourceResponse) then) =
      _$SourceResponseCopyWithImpl<$Res, SourceResponse>;
  @useResult
  $Res call({String? type, Properties? properties, Geometry? geometry});

  $PropertiesCopyWith<$Res>? get properties;
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$SourceResponseCopyWithImpl<$Res, $Val extends SourceResponse>
    implements $SourceResponseCopyWith<$Res> {
  _$SourceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? properties = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertiesCopyWith<$Res>? get properties {
    if (_value.properties == null) {
      return null;
    }

    return $PropertiesCopyWith<$Res>(_value.properties!, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SourceResponseImplCopyWith<$Res>
    implements $SourceResponseCopyWith<$Res> {
  factory _$$SourceResponseImplCopyWith(_$SourceResponseImpl value,
          $Res Function(_$SourceResponseImpl) then) =
      __$$SourceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, Properties? properties, Geometry? geometry});

  @override
  $PropertiesCopyWith<$Res>? get properties;
  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$SourceResponseImplCopyWithImpl<$Res>
    extends _$SourceResponseCopyWithImpl<$Res, _$SourceResponseImpl>
    implements _$$SourceResponseImplCopyWith<$Res> {
  __$$SourceResponseImplCopyWithImpl(
      _$SourceResponseImpl _value, $Res Function(_$SourceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? properties = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_$SourceResponseImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceResponseImpl implements _SourceResponse {
  const _$SourceResponseImpl({this.type, this.properties, this.geometry});

  factory _$SourceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceResponseImplFromJson(json);

  @override
  final String? type;
  @override
  final Properties? properties;
  @override
  final Geometry? geometry;

  @override
  String toString() {
    return 'SourceResponse(type: $type, properties: $properties, geometry: $geometry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.properties, properties) ||
                other.properties == properties) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, properties, geometry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceResponseImplCopyWith<_$SourceResponseImpl> get copyWith =>
      __$$SourceResponseImplCopyWithImpl<_$SourceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceResponseImplToJson(
      this,
    );
  }
}

abstract class _SourceResponse implements SourceResponse {
  const factory _SourceResponse(
      {final String? type,
      final Properties? properties,
      final Geometry? geometry}) = _$SourceResponseImpl;

  factory _SourceResponse.fromJson(Map<String, dynamic> json) =
      _$SourceResponseImpl.fromJson;

  @override
  String? get type;
  @override
  Properties? get properties;
  @override
  Geometry? get geometry;
  @override
  @JsonKey(ignore: true)
  _$$SourceResponseImplCopyWith<_$SourceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
mixin _$Geometry {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res, Geometry>;
  @useResult
  $Res call({String? type, List<double>? coordinates});
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res, $Val extends Geometry>
    implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeometryImplCopyWith<$Res>
    implements $GeometryCopyWith<$Res> {
  factory _$$GeometryImplCopyWith(
          _$GeometryImpl value, $Res Function(_$GeometryImpl) then) =
      __$$GeometryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, List<double>? coordinates});
}

/// @nodoc
class __$$GeometryImplCopyWithImpl<$Res>
    extends _$GeometryCopyWithImpl<$Res, _$GeometryImpl>
    implements _$$GeometryImplCopyWith<$Res> {
  __$$GeometryImplCopyWithImpl(
      _$GeometryImpl _value, $Res Function(_$GeometryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$GeometryImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeometryImpl implements _Geometry {
  const _$GeometryImpl({this.type, final List<double>? coordinates})
      : _coordinates = coordinates;

  factory _$GeometryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeometryImplFromJson(json);

  @override
  final String? type;
  final List<double>? _coordinates;
  @override
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Geometry(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeometryImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeometryImplCopyWith<_$GeometryImpl> get copyWith =>
      __$$GeometryImplCopyWithImpl<_$GeometryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeometryImplToJson(
      this,
    );
  }
}

abstract class _Geometry implements Geometry {
  const factory _Geometry(
      {final String? type, final List<double>? coordinates}) = _$GeometryImpl;

  factory _Geometry.fromJson(Map<String, dynamic> json) =
      _$GeometryImpl.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$GeometryImplCopyWith<_$GeometryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return _Properties.fromJson(json);
}

/// @nodoc
mixin _$Properties {
  int? get scalerank => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get comment => throw _privateConstructorUsedError;
  dynamic get nameAlt => throw _privateConstructorUsedError;
  double? get latY => throw _privateConstructorUsedError;
  double? get longX => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  dynamic get subregion => throw _privateConstructorUsedError;
  String? get featureclass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertiesCopyWith<Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res, Properties>;
  @useResult
  $Res call(
      {int? scalerank,
      String? name,
      dynamic comment,
      dynamic nameAlt,
      double? latY,
      double? longX,
      String? region,
      dynamic subregion,
      String? featureclass});
}

/// @nodoc
class _$PropertiesCopyWithImpl<$Res, $Val extends Properties>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scalerank = freezed,
    Object? name = freezed,
    Object? comment = freezed,
    Object? nameAlt = freezed,
    Object? latY = freezed,
    Object? longX = freezed,
    Object? region = freezed,
    Object? subregion = freezed,
    Object? featureclass = freezed,
  }) {
    return _then(_value.copyWith(
      scalerank: freezed == scalerank
          ? _value.scalerank
          : scalerank // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nameAlt: freezed == nameAlt
          ? _value.nameAlt
          : nameAlt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latY: freezed == latY
          ? _value.latY
          : latY // ignore: cast_nullable_to_non_nullable
              as double?,
      longX: freezed == longX
          ? _value.longX
          : longX // ignore: cast_nullable_to_non_nullable
              as double?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      subregion: freezed == subregion
          ? _value.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as dynamic,
      featureclass: freezed == featureclass
          ? _value.featureclass
          : featureclass // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertiesImplCopyWith<$Res>
    implements $PropertiesCopyWith<$Res> {
  factory _$$PropertiesImplCopyWith(
          _$PropertiesImpl value, $Res Function(_$PropertiesImpl) then) =
      __$$PropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? scalerank,
      String? name,
      dynamic comment,
      dynamic nameAlt,
      double? latY,
      double? longX,
      String? region,
      dynamic subregion,
      String? featureclass});
}

/// @nodoc
class __$$PropertiesImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$PropertiesImpl>
    implements _$$PropertiesImplCopyWith<$Res> {
  __$$PropertiesImplCopyWithImpl(
      _$PropertiesImpl _value, $Res Function(_$PropertiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scalerank = freezed,
    Object? name = freezed,
    Object? comment = freezed,
    Object? nameAlt = freezed,
    Object? latY = freezed,
    Object? longX = freezed,
    Object? region = freezed,
    Object? subregion = freezed,
    Object? featureclass = freezed,
  }) {
    return _then(_$PropertiesImpl(
      scalerank: freezed == scalerank
          ? _value.scalerank
          : scalerank // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nameAlt: freezed == nameAlt
          ? _value.nameAlt
          : nameAlt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latY: freezed == latY
          ? _value.latY
          : latY // ignore: cast_nullable_to_non_nullable
              as double?,
      longX: freezed == longX
          ? _value.longX
          : longX // ignore: cast_nullable_to_non_nullable
              as double?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      subregion: freezed == subregion
          ? _value.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as dynamic,
      featureclass: freezed == featureclass
          ? _value.featureclass
          : featureclass // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertiesImpl implements _Properties {
  const _$PropertiesImpl(
      {this.scalerank,
      this.name,
      this.comment,
      this.nameAlt,
      this.latY,
      this.longX,
      this.region,
      this.subregion,
      this.featureclass});

  factory _$PropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertiesImplFromJson(json);

  @override
  final int? scalerank;
  @override
  final String? name;
  @override
  final dynamic comment;
  @override
  final dynamic nameAlt;
  @override
  final double? latY;
  @override
  final double? longX;
  @override
  final String? region;
  @override
  final dynamic subregion;
  @override
  final String? featureclass;

  @override
  String toString() {
    return 'Properties(scalerank: $scalerank, name: $name, comment: $comment, nameAlt: $nameAlt, latY: $latY, longX: $longX, region: $region, subregion: $subregion, featureclass: $featureclass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertiesImpl &&
            (identical(other.scalerank, scalerank) ||
                other.scalerank == scalerank) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.nameAlt, nameAlt) &&
            (identical(other.latY, latY) || other.latY == latY) &&
            (identical(other.longX, longX) || other.longX == longX) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality().equals(other.subregion, subregion) &&
            (identical(other.featureclass, featureclass) ||
                other.featureclass == featureclass));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scalerank,
      name,
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(nameAlt),
      latY,
      longX,
      region,
      const DeepCollectionEquality().hash(subregion),
      featureclass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertiesImplCopyWith<_$PropertiesImpl> get copyWith =>
      __$$PropertiesImplCopyWithImpl<_$PropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertiesImplToJson(
      this,
    );
  }
}

abstract class _Properties implements Properties {
  const factory _Properties(
      {final int? scalerank,
      final String? name,
      final dynamic comment,
      final dynamic nameAlt,
      final double? latY,
      final double? longX,
      final String? region,
      final dynamic subregion,
      final String? featureclass}) = _$PropertiesImpl;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$PropertiesImpl.fromJson;

  @override
  int? get scalerank;
  @override
  String? get name;
  @override
  dynamic get comment;
  @override
  dynamic get nameAlt;
  @override
  double? get latY;
  @override
  double? get longX;
  @override
  String? get region;
  @override
  dynamic get subregion;
  @override
  String? get featureclass;
  @override
  @JsonKey(ignore: true)
  _$$PropertiesImplCopyWith<_$PropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
