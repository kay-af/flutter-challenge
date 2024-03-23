// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gif_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GifOriginalImageData _$GifOriginalImageDataFromJson(Map<String, dynamic> json) {
  return _GifOriginalImageData.fromJson(json);
}

/// @nodoc
mixin _$GifOriginalImageData {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GifOriginalImageDataCopyWith<GifOriginalImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GifOriginalImageDataCopyWith<$Res> {
  factory $GifOriginalImageDataCopyWith(GifOriginalImageData value,
          $Res Function(GifOriginalImageData) then) =
      _$GifOriginalImageDataCopyWithImpl<$Res, GifOriginalImageData>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$GifOriginalImageDataCopyWithImpl<$Res,
        $Val extends GifOriginalImageData>
    implements $GifOriginalImageDataCopyWith<$Res> {
  _$GifOriginalImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GifOriginalImageDataImplCopyWith<$Res>
    implements $GifOriginalImageDataCopyWith<$Res> {
  factory _$$GifOriginalImageDataImplCopyWith(_$GifOriginalImageDataImpl value,
          $Res Function(_$GifOriginalImageDataImpl) then) =
      __$$GifOriginalImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$GifOriginalImageDataImplCopyWithImpl<$Res>
    extends _$GifOriginalImageDataCopyWithImpl<$Res, _$GifOriginalImageDataImpl>
    implements _$$GifOriginalImageDataImplCopyWith<$Res> {
  __$$GifOriginalImageDataImplCopyWithImpl(_$GifOriginalImageDataImpl _value,
      $Res Function(_$GifOriginalImageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$GifOriginalImageDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GifOriginalImageDataImpl implements _GifOriginalImageData {
  _$GifOriginalImageDataImpl({required this.url});

  factory _$GifOriginalImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GifOriginalImageDataImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'GifOriginalImageData(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GifOriginalImageDataImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GifOriginalImageDataImplCopyWith<_$GifOriginalImageDataImpl>
      get copyWith =>
          __$$GifOriginalImageDataImplCopyWithImpl<_$GifOriginalImageDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GifOriginalImageDataImplToJson(
      this,
    );
  }
}

abstract class _GifOriginalImageData implements GifOriginalImageData {
  factory _GifOriginalImageData({required final String url}) =
      _$GifOriginalImageDataImpl;

  factory _GifOriginalImageData.fromJson(Map<String, dynamic> json) =
      _$GifOriginalImageDataImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$GifOriginalImageDataImplCopyWith<_$GifOriginalImageDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GifImagesData _$GifImagesDataFromJson(Map<String, dynamic> json) {
  return _GifImagesData.fromJson(json);
}

/// @nodoc
mixin _$GifImagesData {
  GifOriginalImageData get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GifImagesDataCopyWith<GifImagesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GifImagesDataCopyWith<$Res> {
  factory $GifImagesDataCopyWith(
          GifImagesData value, $Res Function(GifImagesData) then) =
      _$GifImagesDataCopyWithImpl<$Res, GifImagesData>;
  @useResult
  $Res call({GifOriginalImageData original});

  $GifOriginalImageDataCopyWith<$Res> get original;
}

/// @nodoc
class _$GifImagesDataCopyWithImpl<$Res, $Val extends GifImagesData>
    implements $GifImagesDataCopyWith<$Res> {
  _$GifImagesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as GifOriginalImageData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GifOriginalImageDataCopyWith<$Res> get original {
    return $GifOriginalImageDataCopyWith<$Res>(_value.original, (value) {
      return _then(_value.copyWith(original: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GifImagesDataImplCopyWith<$Res>
    implements $GifImagesDataCopyWith<$Res> {
  factory _$$GifImagesDataImplCopyWith(
          _$GifImagesDataImpl value, $Res Function(_$GifImagesDataImpl) then) =
      __$$GifImagesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GifOriginalImageData original});

  @override
  $GifOriginalImageDataCopyWith<$Res> get original;
}

/// @nodoc
class __$$GifImagesDataImplCopyWithImpl<$Res>
    extends _$GifImagesDataCopyWithImpl<$Res, _$GifImagesDataImpl>
    implements _$$GifImagesDataImplCopyWith<$Res> {
  __$$GifImagesDataImplCopyWithImpl(
      _$GifImagesDataImpl _value, $Res Function(_$GifImagesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
  }) {
    return _then(_$GifImagesDataImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as GifOriginalImageData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GifImagesDataImpl implements _GifImagesData {
  _$GifImagesDataImpl({required this.original});

  factory _$GifImagesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GifImagesDataImplFromJson(json);

  @override
  final GifOriginalImageData original;

  @override
  String toString() {
    return 'GifImagesData(original: $original)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GifImagesDataImpl &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GifImagesDataImplCopyWith<_$GifImagesDataImpl> get copyWith =>
      __$$GifImagesDataImplCopyWithImpl<_$GifImagesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GifImagesDataImplToJson(
      this,
    );
  }
}

abstract class _GifImagesData implements GifImagesData {
  factory _GifImagesData({required final GifOriginalImageData original}) =
      _$GifImagesDataImpl;

  factory _GifImagesData.fromJson(Map<String, dynamic> json) =
      _$GifImagesDataImpl.fromJson;

  @override
  GifOriginalImageData get original;
  @override
  @JsonKey(ignore: true)
  _$$GifImagesDataImplCopyWith<_$GifImagesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GifData _$GifDataFromJson(Map<String, dynamic> json) {
  return _GifData.fromJson(json);
}

/// @nodoc
mixin _$GifData {
  String get id => throw _privateConstructorUsedError;
  GifImagesData get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GifDataCopyWith<GifData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GifDataCopyWith<$Res> {
  factory $GifDataCopyWith(GifData value, $Res Function(GifData) then) =
      _$GifDataCopyWithImpl<$Res, GifData>;
  @useResult
  $Res call({String id, GifImagesData images});

  $GifImagesDataCopyWith<$Res> get images;
}

/// @nodoc
class _$GifDataCopyWithImpl<$Res, $Val extends GifData>
    implements $GifDataCopyWith<$Res> {
  _$GifDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as GifImagesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GifImagesDataCopyWith<$Res> get images {
    return $GifImagesDataCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GifDataImplCopyWith<$Res> implements $GifDataCopyWith<$Res> {
  factory _$$GifDataImplCopyWith(
          _$GifDataImpl value, $Res Function(_$GifDataImpl) then) =
      __$$GifDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, GifImagesData images});

  @override
  $GifImagesDataCopyWith<$Res> get images;
}

/// @nodoc
class __$$GifDataImplCopyWithImpl<$Res>
    extends _$GifDataCopyWithImpl<$Res, _$GifDataImpl>
    implements _$$GifDataImplCopyWith<$Res> {
  __$$GifDataImplCopyWithImpl(
      _$GifDataImpl _value, $Res Function(_$GifDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
  }) {
    return _then(_$GifDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as GifImagesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GifDataImpl implements _GifData {
  _$GifDataImpl({required this.id, required this.images});

  factory _$GifDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GifDataImplFromJson(json);

  @override
  final String id;
  @override
  final GifImagesData images;

  @override
  String toString() {
    return 'GifData(id: $id, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GifDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GifDataImplCopyWith<_$GifDataImpl> get copyWith =>
      __$$GifDataImplCopyWithImpl<_$GifDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GifDataImplToJson(
      this,
    );
  }
}

abstract class _GifData implements GifData {
  factory _GifData(
      {required final String id,
      required final GifImagesData images}) = _$GifDataImpl;

  factory _GifData.fromJson(Map<String, dynamic> json) = _$GifDataImpl.fromJson;

  @override
  String get id;
  @override
  GifImagesData get images;
  @override
  @JsonKey(ignore: true)
  _$$GifDataImplCopyWith<_$GifDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
