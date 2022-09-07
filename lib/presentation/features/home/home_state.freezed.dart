// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  CatFact? get catFact => throw _privateConstructorUsedError;
  String? get catImageUrl => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Exception? get loadingException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {CatFact? catFact,
      String? catImageUrl,
      bool isLoading,
      Exception? loadingException});

  $CatFactCopyWith<$Res>? get catFact;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? catFact = freezed,
    Object? catImageUrl = freezed,
    Object? isLoading = freezed,
    Object? loadingException = freezed,
  }) {
    return _then(_value.copyWith(
      catFact: catFact == freezed
          ? _value.catFact
          : catFact // ignore: cast_nullable_to_non_nullable
              as CatFact?,
      catImageUrl: catImageUrl == freezed
          ? _value.catImageUrl
          : catImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingException: loadingException == freezed
          ? _value.loadingException
          : loadingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }

  @override
  $CatFactCopyWith<$Res>? get catFact {
    if (_value.catFact == null) {
      return null;
    }

    return $CatFactCopyWith<$Res>(_value.catFact!, (value) {
      return _then(_value.copyWith(catFact: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CatFact? catFact,
      String? catImageUrl,
      bool isLoading,
      Exception? loadingException});

  @override
  $CatFactCopyWith<$Res>? get catFact;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? catFact = freezed,
    Object? catImageUrl = freezed,
    Object? isLoading = freezed,
    Object? loadingException = freezed,
  }) {
    return _then(_$_HomeState(
      catFact: catFact == freezed
          ? _value.catFact
          : catFact // ignore: cast_nullable_to_non_nullable
              as CatFact?,
      catImageUrl: catImageUrl == freezed
          ? _value.catImageUrl
          : catImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingException: loadingException == freezed
          ? _value.loadingException
          : loadingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_HomeState extends _HomeState {
  const _$_HomeState(
      {required this.catFact,
      required this.catImageUrl,
      required this.isLoading,
      required this.loadingException})
      : super._();

  @override
  final CatFact? catFact;
  @override
  final String? catImageUrl;
  @override
  final bool isLoading;
  @override
  final Exception? loadingException;

  @override
  String toString() {
    return 'HomeState(catFact: $catFact, catImageUrl: $catImageUrl, isLoading: $isLoading, loadingException: $loadingException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.catFact, catFact) &&
            const DeepCollectionEquality()
                .equals(other.catImageUrl, catImageUrl) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.loadingException, loadingException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(catFact),
      const DeepCollectionEquality().hash(catImageUrl),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(loadingException));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {required final CatFact? catFact,
      required final String? catImageUrl,
      required final bool isLoading,
      required final Exception? loadingException}) = _$_HomeState;
  const _HomeState._() : super._();

  @override
  CatFact? get catFact;
  @override
  String? get catImageUrl;
  @override
  bool get isLoading;
  @override
  Exception? get loadingException;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
