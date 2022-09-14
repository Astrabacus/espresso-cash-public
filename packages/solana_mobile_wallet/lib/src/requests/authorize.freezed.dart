// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authorize.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizeRequest {
  String? get identityName => throw _privateConstructorUsedError;
  Uri? get identityUri => throw _privateConstructorUsedError;
  Uri? get iconUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizeRequestCopyWith<AuthorizeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizeRequestCopyWith<$Res> {
  factory $AuthorizeRequestCopyWith(
          AuthorizeRequest value, $Res Function(AuthorizeRequest) then) =
      _$AuthorizeRequestCopyWithImpl<$Res>;
  $Res call({String? identityName, Uri? identityUri, Uri? iconUri});
}

/// @nodoc
class _$AuthorizeRequestCopyWithImpl<$Res>
    implements $AuthorizeRequestCopyWith<$Res> {
  _$AuthorizeRequestCopyWithImpl(this._value, this._then);

  final AuthorizeRequest _value;
  // ignore: unused_field
  final $Res Function(AuthorizeRequest) _then;

  @override
  $Res call({
    Object? identityName = freezed,
    Object? identityUri = freezed,
    Object? iconUri = freezed,
  }) {
    return _then(_value.copyWith(
      identityName: identityName == freezed
          ? _value.identityName
          : identityName // ignore: cast_nullable_to_non_nullable
              as String?,
      identityUri: identityUri == freezed
          ? _value.identityUri
          : identityUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      iconUri: iconUri == freezed
          ? _value.iconUri
          : iconUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthorizeRequestCopyWith<$Res>
    implements $AuthorizeRequestCopyWith<$Res> {
  factory _$$_AuthorizeRequestCopyWith(
          _$_AuthorizeRequest value, $Res Function(_$_AuthorizeRequest) then) =
      __$$_AuthorizeRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? identityName, Uri? identityUri, Uri? iconUri});
}

/// @nodoc
class __$$_AuthorizeRequestCopyWithImpl<$Res>
    extends _$AuthorizeRequestCopyWithImpl<$Res>
    implements _$$_AuthorizeRequestCopyWith<$Res> {
  __$$_AuthorizeRequestCopyWithImpl(
      _$_AuthorizeRequest _value, $Res Function(_$_AuthorizeRequest) _then)
      : super(_value, (v) => _then(v as _$_AuthorizeRequest));

  @override
  _$_AuthorizeRequest get _value => super._value as _$_AuthorizeRequest;

  @override
  $Res call({
    Object? identityName = freezed,
    Object? identityUri = freezed,
    Object? iconUri = freezed,
  }) {
    return _then(_$_AuthorizeRequest(
      identityName: identityName == freezed
          ? _value.identityName
          : identityName // ignore: cast_nullable_to_non_nullable
              as String?,
      identityUri: identityUri == freezed
          ? _value.identityUri
          : identityUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      iconUri: iconUri == freezed
          ? _value.iconUri
          : iconUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc

class _$_AuthorizeRequest implements _AuthorizeRequest {
  const _$_AuthorizeRequest(
      {required this.identityName,
      required this.identityUri,
      required this.iconUri});

  @override
  final String? identityName;
  @override
  final Uri? identityUri;
  @override
  final Uri? iconUri;

  @override
  String toString() {
    return 'AuthorizeRequest(identityName: $identityName, identityUri: $identityUri, iconUri: $iconUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizeRequest &&
            const DeepCollectionEquality()
                .equals(other.identityName, identityName) &&
            const DeepCollectionEquality()
                .equals(other.identityUri, identityUri) &&
            const DeepCollectionEquality().equals(other.iconUri, iconUri));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(identityName),
      const DeepCollectionEquality().hash(identityUri),
      const DeepCollectionEquality().hash(iconUri));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorizeRequestCopyWith<_$_AuthorizeRequest> get copyWith =>
      __$$_AuthorizeRequestCopyWithImpl<_$_AuthorizeRequest>(this, _$identity);
}

abstract class _AuthorizeRequest implements AuthorizeRequest {
  const factory _AuthorizeRequest(
      {required final String? identityName,
      required final Uri? identityUri,
      required final Uri? iconUri}) = _$_AuthorizeRequest;

  @override
  String? get identityName;
  @override
  Uri? get identityUri;
  @override
  Uri? get iconUri;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizeRequestCopyWith<_$_AuthorizeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorizeResult {
  Uint8List get publicKey => throw _privateConstructorUsedError;
  String? get accountLabel => throw _privateConstructorUsedError;
  Uri? get walletUriBase => throw _privateConstructorUsedError;
  Uint8List? get scope => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizeResultCopyWith<AuthorizeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizeResultCopyWith<$Res> {
  factory $AuthorizeResultCopyWith(
          AuthorizeResult value, $Res Function(AuthorizeResult) then) =
      _$AuthorizeResultCopyWithImpl<$Res>;
  $Res call(
      {Uint8List publicKey,
      String? accountLabel,
      Uri? walletUriBase,
      Uint8List? scope});
}

/// @nodoc
class _$AuthorizeResultCopyWithImpl<$Res>
    implements $AuthorizeResultCopyWith<$Res> {
  _$AuthorizeResultCopyWithImpl(this._value, this._then);

  final AuthorizeResult _value;
  // ignore: unused_field
  final $Res Function(AuthorizeResult) _then;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? accountLabel = freezed,
    Object? walletUriBase = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      accountLabel: accountLabel == freezed
          ? _value.accountLabel
          : accountLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      walletUriBase: walletUriBase == freezed
          ? _value.walletUriBase
          : walletUriBase // ignore: cast_nullable_to_non_nullable
              as Uri?,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthorizeResultCopyWith<$Res>
    implements $AuthorizeResultCopyWith<$Res> {
  factory _$$_AuthorizeResultCopyWith(
          _$_AuthorizeResult value, $Res Function(_$_AuthorizeResult) then) =
      __$$_AuthorizeResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uint8List publicKey,
      String? accountLabel,
      Uri? walletUriBase,
      Uint8List? scope});
}

/// @nodoc
class __$$_AuthorizeResultCopyWithImpl<$Res>
    extends _$AuthorizeResultCopyWithImpl<$Res>
    implements _$$_AuthorizeResultCopyWith<$Res> {
  __$$_AuthorizeResultCopyWithImpl(
      _$_AuthorizeResult _value, $Res Function(_$_AuthorizeResult) _then)
      : super(_value, (v) => _then(v as _$_AuthorizeResult));

  @override
  _$_AuthorizeResult get _value => super._value as _$_AuthorizeResult;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? accountLabel = freezed,
    Object? walletUriBase = freezed,
    Object? scope = freezed,
  }) {
    return _then(_$_AuthorizeResult(
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      accountLabel: accountLabel == freezed
          ? _value.accountLabel
          : accountLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      walletUriBase: walletUriBase == freezed
          ? _value.walletUriBase
          : walletUriBase // ignore: cast_nullable_to_non_nullable
              as Uri?,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_AuthorizeResult implements _AuthorizeResult {
  const _$_AuthorizeResult(
      {required this.publicKey,
      this.accountLabel,
      this.walletUriBase,
      this.scope});

  @override
  final Uint8List publicKey;
  @override
  final String? accountLabel;
  @override
  final Uri? walletUriBase;
  @override
  final Uint8List? scope;

  @override
  String toString() {
    return 'AuthorizeResult(publicKey: $publicKey, accountLabel: $accountLabel, walletUriBase: $walletUriBase, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizeResult &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality()
                .equals(other.accountLabel, accountLabel) &&
            const DeepCollectionEquality()
                .equals(other.walletUriBase, walletUriBase) &&
            const DeepCollectionEquality().equals(other.scope, scope));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(accountLabel),
      const DeepCollectionEquality().hash(walletUriBase),
      const DeepCollectionEquality().hash(scope));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorizeResultCopyWith<_$_AuthorizeResult> get copyWith =>
      __$$_AuthorizeResultCopyWithImpl<_$_AuthorizeResult>(this, _$identity);
}

abstract class _AuthorizeResult implements AuthorizeResult {
  const factory _AuthorizeResult(
      {required final Uint8List publicKey,
      final String? accountLabel,
      final Uri? walletUriBase,
      final Uint8List? scope}) = _$_AuthorizeResult;

  @override
  Uint8List get publicKey;
  @override
  String? get accountLabel;
  @override
  Uri? get walletUriBase;
  @override
  Uint8List? get scope;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizeResultCopyWith<_$_AuthorizeResult> get copyWith =>
      throw _privateConstructorUsedError;
}