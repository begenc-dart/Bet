// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) {
  return _TicketDto.fromJson(json);
}

/// @nodoc
mixin _$TicketDto {
  String? get pageTitle => throw _privateConstructorUsedError;
  Supports? get supports => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this TicketDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketDtoCopyWith<TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDtoCopyWith<$Res> {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) then) =
      _$TicketDtoCopyWithImpl<$Res, TicketDto>;
  @useResult
  $Res call({String? pageTitle, Supports? supports, bool? success});

  $SupportsCopyWith<$Res>? get supports;
}

/// @nodoc
class _$TicketDtoCopyWithImpl<$Res, $Val extends TicketDto>
    implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageTitle = freezed,
    Object? supports = freezed,
    Object? success = freezed,
  }) {
    return _then(
      _value.copyWith(
            pageTitle: freezed == pageTitle
                ? _value.pageTitle
                : pageTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            supports: freezed == supports
                ? _value.supports
                : supports // ignore: cast_nullable_to_non_nullable
                      as Supports?,
            success: freezed == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportsCopyWith<$Res>? get supports {
    if (_value.supports == null) {
      return null;
    }

    return $SupportsCopyWith<$Res>(_value.supports!, (value) {
      return _then(_value.copyWith(supports: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketDtoImplCopyWith<$Res>
    implements $TicketDtoCopyWith<$Res> {
  factory _$$TicketDtoImplCopyWith(
    _$TicketDtoImpl value,
    $Res Function(_$TicketDtoImpl) then,
  ) = __$$TicketDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? pageTitle, Supports? supports, bool? success});

  @override
  $SupportsCopyWith<$Res>? get supports;
}

/// @nodoc
class __$$TicketDtoImplCopyWithImpl<$Res>
    extends _$TicketDtoCopyWithImpl<$Res, _$TicketDtoImpl>
    implements _$$TicketDtoImplCopyWith<$Res> {
  __$$TicketDtoImplCopyWithImpl(
    _$TicketDtoImpl _value,
    $Res Function(_$TicketDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageTitle = freezed,
    Object? supports = freezed,
    Object? success = freezed,
  }) {
    return _then(
      _$TicketDtoImpl(
        pageTitle: freezed == pageTitle
            ? _value.pageTitle
            : pageTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        supports: freezed == supports
            ? _value.supports
            : supports // ignore: cast_nullable_to_non_nullable
                  as Supports?,
        success: freezed == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketDtoImpl implements _TicketDto {
  const _$TicketDtoImpl({this.pageTitle, this.supports, this.success});

  factory _$TicketDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketDtoImplFromJson(json);

  @override
  final String? pageTitle;
  @override
  final Supports? supports;
  @override
  final bool? success;

  @override
  String toString() {
    return 'TicketDto(pageTitle: $pageTitle, supports: $supports, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketDtoImpl &&
            (identical(other.pageTitle, pageTitle) ||
                other.pageTitle == pageTitle) &&
            (identical(other.supports, supports) ||
                other.supports == supports) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageTitle, supports, success);

  /// Create a copy of TicketDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketDtoImplCopyWith<_$TicketDtoImpl> get copyWith =>
      __$$TicketDtoImplCopyWithImpl<_$TicketDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketDtoImplToJson(this);
  }
}

abstract class _TicketDto implements TicketDto {
  const factory _TicketDto({
    final String? pageTitle,
    final Supports? supports,
    final bool? success,
  }) = _$TicketDtoImpl;

  factory _TicketDto.fromJson(Map<String, dynamic> json) =
      _$TicketDtoImpl.fromJson;

  @override
  String? get pageTitle;
  @override
  Supports? get supports;
  @override
  bool? get success;

  /// Create a copy of TicketDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketDtoImplCopyWith<_$TicketDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Supports _$SupportsFromJson(Map<String, dynamic> json) {
  return _Supports.fromJson(json);
}

/// @nodoc
mixin _$Supports {
  int? get currentPage => throw _privateConstructorUsedError;
  List<dynamic>? get data => throw _privateConstructorUsedError;
  String? get firstPageUrl => throw _privateConstructorUsedError;
  dynamic get from => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  dynamic get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this Supports to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Supports
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportsCopyWith<Supports> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportsCopyWith<$Res> {
  factory $SupportsCopyWith(Supports value, $Res Function(Supports) then) =
      _$SupportsCopyWithImpl<$Res, Supports>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$SupportsCopyWithImpl<$Res, $Val extends Supports>
    implements $SupportsCopyWith<$Res> {
  _$SupportsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Supports
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(
      _value.copyWith(
            currentPage: freezed == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            firstPageUrl: freezed == firstPageUrl
                ? _value.firstPageUrl
                : firstPageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            from: freezed == from
                ? _value.from
                : from // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            lastPage: freezed == lastPage
                ? _value.lastPage
                : lastPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            lastPageUrl: freezed == lastPageUrl
                ? _value.lastPageUrl
                : lastPageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            links: freezed == links
                ? _value.links
                : links // ignore: cast_nullable_to_non_nullable
                      as List<Link>?,
            nextPageUrl: freezed == nextPageUrl
                ? _value.nextPageUrl
                : nextPageUrl // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            path: freezed == path
                ? _value.path
                : path // ignore: cast_nullable_to_non_nullable
                      as String?,
            perPage: freezed == perPage
                ? _value.perPage
                : perPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            prevPageUrl: freezed == prevPageUrl
                ? _value.prevPageUrl
                : prevPageUrl // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            to: freezed == to
                ? _value.to
                : to // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportsImplCopyWith<$Res>
    implements $SupportsCopyWith<$Res> {
  factory _$$SupportsImplCopyWith(
    _$SupportsImpl value,
    $Res Function(_$SupportsImpl) then,
  ) = __$$SupportsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$SupportsImplCopyWithImpl<$Res>
    extends _$SupportsCopyWithImpl<$Res, _$SupportsImpl>
    implements _$$SupportsImplCopyWith<$Res> {
  __$$SupportsImplCopyWithImpl(
    _$SupportsImpl _value,
    $Res Function(_$SupportsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Supports
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(
      _$SupportsImpl(
        currentPage: freezed == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        firstPageUrl: freezed == firstPageUrl
            ? _value.firstPageUrl
            : firstPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        from: freezed == from
            ? _value.from
            : from // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        lastPage: freezed == lastPage
            ? _value.lastPage
            : lastPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastPageUrl: freezed == lastPageUrl
            ? _value.lastPageUrl
            : lastPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        links: freezed == links
            ? _value._links
            : links // ignore: cast_nullable_to_non_nullable
                  as List<Link>?,
        nextPageUrl: freezed == nextPageUrl
            ? _value.nextPageUrl
            : nextPageUrl // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        path: freezed == path
            ? _value.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String?,
        perPage: freezed == perPage
            ? _value.perPage
            : perPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        prevPageUrl: freezed == prevPageUrl
            ? _value.prevPageUrl
            : prevPageUrl // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        to: freezed == to
            ? _value.to
            : to // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportsImpl implements _Supports {
  const _$SupportsImpl({
    this.currentPage,
    final List<dynamic>? data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    final List<Link>? links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  }) : _data = data,
       _links = links;

  factory _$SupportsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportsImplFromJson(json);

  @override
  final int? currentPage;
  final List<dynamic>? _data;
  @override
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? firstPageUrl;
  @override
  final dynamic from;
  @override
  final int? lastPage;
  @override
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic nextPageUrl;
  @override
  final String? path;
  @override
  final int? perPage;
  @override
  final dynamic prevPageUrl;
  @override
  final dynamic to;
  @override
  final int? total;

  @override
  String toString() {
    return 'Supports(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportsImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality().equals(
              other.nextPageUrl,
              nextPageUrl,
            ) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality().equals(
              other.prevPageUrl,
              prevPageUrl,
            ) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentPage,
    const DeepCollectionEquality().hash(_data),
    firstPageUrl,
    const DeepCollectionEquality().hash(from),
    lastPage,
    lastPageUrl,
    const DeepCollectionEquality().hash(_links),
    const DeepCollectionEquality().hash(nextPageUrl),
    path,
    perPage,
    const DeepCollectionEquality().hash(prevPageUrl),
    const DeepCollectionEquality().hash(to),
    total,
  );

  /// Create a copy of Supports
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportsImplCopyWith<_$SupportsImpl> get copyWith =>
      __$$SupportsImplCopyWithImpl<_$SupportsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportsImplToJson(this);
  }
}

abstract class _Supports implements Supports {
  const factory _Supports({
    final int? currentPage,
    final List<dynamic>? data,
    final String? firstPageUrl,
    final dynamic from,
    final int? lastPage,
    final String? lastPageUrl,
    final List<Link>? links,
    final dynamic nextPageUrl,
    final String? path,
    final int? perPage,
    final dynamic prevPageUrl,
    final dynamic to,
    final int? total,
  }) = _$SupportsImpl;

  factory _Supports.fromJson(Map<String, dynamic> json) =
      _$SupportsImpl.fromJson;

  @override
  int? get currentPage;
  @override
  List<dynamic>? get data;
  @override
  String? get firstPageUrl;
  @override
  dynamic get from;
  @override
  int? get lastPage;
  @override
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  dynamic get nextPageUrl;
  @override
  String? get path;
  @override
  int? get perPage;
  @override
  dynamic get prevPageUrl;
  @override
  dynamic get to;
  @override
  int? get total;

  /// Create a copy of Supports
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportsImplCopyWith<_$SupportsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(
      _value.copyWith(
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
            label: freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String?,
            active: freezed == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
    _$LinkImpl value,
    $Res Function(_$LinkImpl) then,
  ) = __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
    : super(_value, _then);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(
      _$LinkImpl(
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        label: freezed == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
        active: freezed == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl({this.url, this.label, this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(this);
  }
}

abstract class _Link implements Link {
  const factory _Link({
    final String? url,
    final String? label,
    final bool? active,
  }) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
