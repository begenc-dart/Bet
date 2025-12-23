// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketDtoImpl _$$TicketDtoImplFromJson(Map<String, dynamic> json) =>
    _$TicketDtoImpl(
      pageTitle: json['pageTitle'] as String?,
      supports: json['supports'] == null
          ? null
          : Supports.fromJson(json['supports'] as Map<String, dynamic>),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$TicketDtoImplToJson(_$TicketDtoImpl instance) =>
    <String, dynamic>{
      'pageTitle': instance.pageTitle,
      'supports': instance.supports,
      'success': instance.success,
    };

_$SupportsImpl _$$SupportsImplFromJson(Map<String, dynamic> json) =>
    _$SupportsImpl(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      data: json['data'] as List<dynamic>?,
      firstPageUrl: json['firstPageUrl'] as String?,
      from: json['from'],
      lastPage: (json['lastPage'] as num?)?.toInt(),
      lastPageUrl: json['lastPageUrl'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['nextPageUrl'],
      path: json['path'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      prevPageUrl: json['prevPageUrl'],
      to: json['to'],
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SupportsImplToJson(_$SupportsImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.data,
      'firstPageUrl': instance.firstPageUrl,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'lastPageUrl': instance.lastPageUrl,
      'links': instance.links,
      'nextPageUrl': instance.nextPageUrl,
      'path': instance.path,
      'perPage': instance.perPage,
      'prevPageUrl': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
  url: json['url'] as String?,
  label: json['label'] as String?,
  active: json['active'] as bool?,
);

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
