// To parse this JSON data, do
//
//     final ticketDto = ticketDtoFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';

TicketDto ticketDtoFromJson(String str) => TicketDto.fromJson(json.decode(str));

String ticketDtoToJson(TicketDto data) => json.encode(data.toJson());

@freezed
class TicketDto with _$TicketDto {
    const factory TicketDto({
        String? pageTitle,
        Supports? supports,
        bool? success,
    }) = _TicketDto;

    factory TicketDto.fromJson(Map<String, dynamic> json) => _$TicketDtoFromJson(json);
}

@freezed
class Supports with _$Supports {
    const factory Supports({
        int? currentPage,
        List<dynamic>? data,
        String? firstPageUrl,
        dynamic from,
        int? lastPage,
        String? lastPageUrl,
        List<Link>? links,
        dynamic nextPageUrl,
        String? path,
        int? perPage,
        dynamic prevPageUrl,
        dynamic to,
        int? total,
    }) = _Supports;

    factory Supports.fromJson(Map<String, dynamic> json) => _$SupportsFromJson(json);
}

@freezed
class Link with _$Link {
    const factory Link({
        String? url,
        String? label,
        bool? active,
    }) = _Link;

    factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
