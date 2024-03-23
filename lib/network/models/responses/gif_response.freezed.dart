// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gif_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GifResponse _$GifResponseFromJson(Map<String, dynamic> json) {
  return _GifResponse.fromJson(json);
}

/// @nodoc
mixin _$GifResponse {
  PaginationData get pagination => throw _privateConstructorUsedError;
  List<GifData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GifResponseCopyWith<GifResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GifResponseCopyWith<$Res> {
  factory $GifResponseCopyWith(
          GifResponse value, $Res Function(GifResponse) then) =
      _$GifResponseCopyWithImpl<$Res, GifResponse>;
  @useResult
  $Res call({PaginationData pagination, List<GifData> data});

  $PaginationDataCopyWith<$Res> get pagination;
}

/// @nodoc
class _$GifResponseCopyWithImpl<$Res, $Val extends GifResponse>
    implements $GifResponseCopyWith<$Res> {
  _$GifResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationData,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GifData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationDataCopyWith<$Res> get pagination {
    return $PaginationDataCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GifResponseImplCopyWith<$Res>
    implements $GifResponseCopyWith<$Res> {
  factory _$$GifResponseImplCopyWith(
          _$GifResponseImpl value, $Res Function(_$GifResponseImpl) then) =
      __$$GifResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationData pagination, List<GifData> data});

  @override
  $PaginationDataCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$GifResponseImplCopyWithImpl<$Res>
    extends _$GifResponseCopyWithImpl<$Res, _$GifResponseImpl>
    implements _$$GifResponseImplCopyWith<$Res> {
  __$$GifResponseImplCopyWithImpl(
      _$GifResponseImpl _value, $Res Function(_$GifResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? data = null,
  }) {
    return _then(_$GifResponseImpl(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationData,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GifData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GifResponseImpl implements _GifResponse {
  _$GifResponseImpl(
      {required this.pagination, required final List<GifData> data})
      : _data = data;

  factory _$GifResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GifResponseImplFromJson(json);

  @override
  final PaginationData pagination;
  final List<GifData> _data;
  @override
  List<GifData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GifResponse(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GifResponseImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GifResponseImplCopyWith<_$GifResponseImpl> get copyWith =>
      __$$GifResponseImplCopyWithImpl<_$GifResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GifResponseImplToJson(
      this,
    );
  }
}

abstract class _GifResponse implements GifResponse {
  factory _GifResponse(
      {required final PaginationData pagination,
      required final List<GifData> data}) = _$GifResponseImpl;

  factory _GifResponse.fromJson(Map<String, dynamic> json) =
      _$GifResponseImpl.fromJson;

  @override
  PaginationData get pagination;
  @override
  List<GifData> get data;
  @override
  @JsonKey(ignore: true)
  _$$GifResponseImplCopyWith<_$GifResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
