// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LinkDetailEntity _$$_LinkDetailEntityFromJson(Map<String, dynamic> json) =>
    _$_LinkDetailEntity(
      id: json['id'] as int,
      link: json['link'] as String,
      linkType: json['name'] as String,
    );

Map<String, dynamic> _$$_LinkDetailEntityToJson(_$_LinkDetailEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'name': instance.linkType,
    };
