// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceResponseImpl _$$SourceResponseImplFromJson(Map<String, dynamic> json) =>
    _$SourceResponseImpl(
      type: json['type'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SourceResponseImplToJson(
        _$SourceResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties?.toJson(),
      'geometry': instance.geometry?.toJson(),
    };

_$GeometryImpl _$$GeometryImplFromJson(Map<String, dynamic> json) =>
    _$GeometryImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$GeometryImplToJson(_$GeometryImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$PropertiesImpl _$$PropertiesImplFromJson(Map<String, dynamic> json) =>
    _$PropertiesImpl(
      scalerank: (json['scalerank'] as num?)?.toInt(),
      name: json['name'] as String?,
      comment: json['comment'],
      nameAlt: json['nameAlt'],
      latY: (json['latY'] as num?)?.toDouble(),
      longX: (json['longX'] as num?)?.toDouble(),
      region: json['region'] as String?,
      subregion: json['subregion'],
      featureclass: json['featureclass'] as String?,
    );

Map<String, dynamic> _$$PropertiesImplToJson(_$PropertiesImpl instance) =>
    <String, dynamic>{
      'scalerank': instance.scalerank,
      'name': instance.name,
      'comment': instance.comment,
      'nameAlt': instance.nameAlt,
      'latY': instance.latY,
      'longX': instance.longX,
      'region': instance.region,
      'subregion': instance.subregion,
      'featureclass': instance.featureclass,
    };
