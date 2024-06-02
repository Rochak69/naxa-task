import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_response.freezed.dart';
part 'source_response.g.dart';

@freezed
class SourceResponse with _$SourceResponse {
  const factory SourceResponse({
    String? type,
    Properties? properties,
    Geometry? geometry,
  }) = _SourceResponse;

  factory SourceResponse.fromJson(Map<String, dynamic> json) =>
      _$SourceResponseFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    String? type,
    List<double>? coordinates,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
class Properties with _$Properties {
  const factory Properties({
    int? scalerank,
    String? name,
    dynamic comment,
    dynamic nameAlt,
    double? latY,
    double? longX,
    String? region,
    dynamic subregion,
    String? featureclass,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}
