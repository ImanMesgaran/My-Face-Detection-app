// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FaceAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCapture,
    required TResult Function(FaceData faceData) startAuthentication,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startCapture,
    TResult? Function(FaceData faceData)? startAuthentication,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCapture,
    TResult Function(FaceData faceData)? startAuthentication,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCapture value) startCapture,
    required TResult Function(_StartAuthentication value) startAuthentication,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCapture value)? startCapture,
    TResult? Function(_StartAuthentication value)? startAuthentication,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCapture value)? startCapture,
    TResult Function(_StartAuthentication value)? startAuthentication,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceAuthEventCopyWith<$Res> {
  factory $FaceAuthEventCopyWith(
    FaceAuthEvent value,
    $Res Function(FaceAuthEvent) then,
  ) = _$FaceAuthEventCopyWithImpl<$Res, FaceAuthEvent>;
}

/// @nodoc
class _$FaceAuthEventCopyWithImpl<$Res, $Val extends FaceAuthEvent>
    implements $FaceAuthEventCopyWith<$Res> {
  _$FaceAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaceAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartCaptureImplCopyWith<$Res> {
  factory _$$StartCaptureImplCopyWith(
    _$StartCaptureImpl value,
    $Res Function(_$StartCaptureImpl) then,
  ) = __$$StartCaptureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartCaptureImplCopyWithImpl<$Res>
    extends _$FaceAuthEventCopyWithImpl<$Res, _$StartCaptureImpl>
    implements _$$StartCaptureImplCopyWith<$Res> {
  __$$StartCaptureImplCopyWithImpl(
    _$StartCaptureImpl _value,
    $Res Function(_$StartCaptureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FaceAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartCaptureImpl implements _StartCapture {
  const _$StartCaptureImpl();

  @override
  String toString() {
    return 'FaceAuthEvent.startCapture()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartCaptureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCapture,
    required TResult Function(FaceData faceData) startAuthentication,
  }) {
    return startCapture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startCapture,
    TResult? Function(FaceData faceData)? startAuthentication,
  }) {
    return startCapture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCapture,
    TResult Function(FaceData faceData)? startAuthentication,
    required TResult orElse(),
  }) {
    if (startCapture != null) {
      return startCapture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCapture value) startCapture,
    required TResult Function(_StartAuthentication value) startAuthentication,
  }) {
    return startCapture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCapture value)? startCapture,
    TResult? Function(_StartAuthentication value)? startAuthentication,
  }) {
    return startCapture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCapture value)? startCapture,
    TResult Function(_StartAuthentication value)? startAuthentication,
    required TResult orElse(),
  }) {
    if (startCapture != null) {
      return startCapture(this);
    }
    return orElse();
  }
}

abstract class _StartCapture implements FaceAuthEvent {
  const factory _StartCapture() = _$StartCaptureImpl;
}

/// @nodoc
abstract class _$$StartAuthenticationImplCopyWith<$Res> {
  factory _$$StartAuthenticationImplCopyWith(
    _$StartAuthenticationImpl value,
    $Res Function(_$StartAuthenticationImpl) then,
  ) = __$$StartAuthenticationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FaceData faceData});
}

/// @nodoc
class __$$StartAuthenticationImplCopyWithImpl<$Res>
    extends _$FaceAuthEventCopyWithImpl<$Res, _$StartAuthenticationImpl>
    implements _$$StartAuthenticationImplCopyWith<$Res> {
  __$$StartAuthenticationImplCopyWithImpl(
    _$StartAuthenticationImpl _value,
    $Res Function(_$StartAuthenticationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FaceAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? faceData = null}) {
    return _then(
      _$StartAuthenticationImpl(
        null == faceData
            ? _value.faceData
            : faceData // ignore: cast_nullable_to_non_nullable
                  as FaceData,
      ),
    );
  }
}

/// @nodoc

class _$StartAuthenticationImpl implements _StartAuthentication {
  const _$StartAuthenticationImpl(this.faceData);

  @override
  final FaceData faceData;

  @override
  String toString() {
    return 'FaceAuthEvent.startAuthentication(faceData: $faceData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartAuthenticationImpl &&
            (identical(other.faceData, faceData) ||
                other.faceData == faceData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faceData);

  /// Create a copy of FaceAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartAuthenticationImplCopyWith<_$StartAuthenticationImpl> get copyWith =>
      __$$StartAuthenticationImplCopyWithImpl<_$StartAuthenticationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startCapture,
    required TResult Function(FaceData faceData) startAuthentication,
  }) {
    return startAuthentication(faceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startCapture,
    TResult? Function(FaceData faceData)? startAuthentication,
  }) {
    return startAuthentication?.call(faceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startCapture,
    TResult Function(FaceData faceData)? startAuthentication,
    required TResult orElse(),
  }) {
    if (startAuthentication != null) {
      return startAuthentication(faceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCapture value) startCapture,
    required TResult Function(_StartAuthentication value) startAuthentication,
  }) {
    return startAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCapture value)? startCapture,
    TResult? Function(_StartAuthentication value)? startAuthentication,
  }) {
    return startAuthentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCapture value)? startCapture,
    TResult Function(_StartAuthentication value)? startAuthentication,
    required TResult orElse(),
  }) {
    if (startAuthentication != null) {
      return startAuthentication(this);
    }
    return orElse();
  }
}

abstract class _StartAuthentication implements FaceAuthEvent {
  const factory _StartAuthentication(final FaceData faceData) =
      _$StartAuthenticationImpl;

  FaceData get faceData;

  /// Create a copy of FaceAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartAuthenticationImplCopyWith<_$StartAuthenticationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
