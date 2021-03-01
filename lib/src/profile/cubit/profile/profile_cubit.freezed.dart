// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  ProfileErrorState error({@required String error}) {
    return ProfileErrorState(
      error: error,
    );
  }

// ignore: unused_element
  ProfileRefreshingState refreshing() {
    return const ProfileRefreshingState();
  }

// ignore: unused_element
  InitialProfileState initial() {
    return const InitialProfileState();
  }

// ignore: unused_element
  ProfileLoadedState loaded({@required Profile profile}) {
    return ProfileLoadedState(
      profile: profile,
    );
  }

// ignore: unused_element
  ProfileLoadingState loading() {
    return const ProfileLoadingState();
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(Profile profile),
    @required TResult loading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(Profile profile),
    TResult loading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProfileErrorState value),
    @required TResult refreshing(ProfileRefreshingState value),
    @required TResult initial(InitialProfileState value),
    @required TResult loaded(ProfileLoadedState value),
    @required TResult loading(ProfileLoadingState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProfileErrorState value),
    TResult refreshing(ProfileRefreshingState value),
    TResult initial(InitialProfileState value),
    TResult loaded(ProfileLoadedState value),
    TResult loading(ProfileLoadingState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $ProfileErrorStateCopyWith<$Res> {
  factory $ProfileErrorStateCopyWith(
          ProfileErrorState value, $Res Function(ProfileErrorState) then) =
      _$ProfileErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ProfileErrorStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileErrorStateCopyWith<$Res> {
  _$ProfileErrorStateCopyWithImpl(
      ProfileErrorState _value, $Res Function(ProfileErrorState) _then)
      : super(_value, (v) => _then(v as ProfileErrorState));

  @override
  ProfileErrorState get _value => super._value as ProfileErrorState;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ProfileErrorState(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$ProfileErrorState implements ProfileErrorState {
  const _$ProfileErrorState({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileErrorState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ProfileErrorStateCopyWith<ProfileErrorState> get copyWith =>
      _$ProfileErrorStateCopyWithImpl<ProfileErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(Profile profile),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(Profile profile),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProfileErrorState value),
    @required TResult refreshing(ProfileRefreshingState value),
    @required TResult initial(InitialProfileState value),
    @required TResult loaded(ProfileLoadedState value),
    @required TResult loading(ProfileLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProfileErrorState value),
    TResult refreshing(ProfileRefreshingState value),
    TResult initial(InitialProfileState value),
    TResult loaded(ProfileLoadedState value),
    TResult loading(ProfileLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileErrorState implements ProfileState {
  const factory ProfileErrorState({@required String error}) =
      _$ProfileErrorState;

  String get error;
  @JsonKey(ignore: true)
  $ProfileErrorStateCopyWith<ProfileErrorState> get copyWith;
}

/// @nodoc
abstract class $ProfileRefreshingStateCopyWith<$Res> {
  factory $ProfileRefreshingStateCopyWith(ProfileRefreshingState value,
          $Res Function(ProfileRefreshingState) then) =
      _$ProfileRefreshingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileRefreshingStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileRefreshingStateCopyWith<$Res> {
  _$ProfileRefreshingStateCopyWithImpl(ProfileRefreshingState _value,
      $Res Function(ProfileRefreshingState) _then)
      : super(_value, (v) => _then(v as ProfileRefreshingState));

  @override
  ProfileRefreshingState get _value => super._value as ProfileRefreshingState;
}

/// @nodoc
class _$ProfileRefreshingState implements ProfileRefreshingState {
  const _$ProfileRefreshingState();

  @override
  String toString() {
    return 'ProfileState.refreshing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileRefreshingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(Profile profile),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(Profile profile),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshing != null) {
      return refreshing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProfileErrorState value),
    @required TResult refreshing(ProfileRefreshingState value),
    @required TResult initial(InitialProfileState value),
    @required TResult loaded(ProfileLoadedState value),
    @required TResult loading(ProfileLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProfileErrorState value),
    TResult refreshing(ProfileRefreshingState value),
    TResult initial(InitialProfileState value),
    TResult loaded(ProfileLoadedState value),
    TResult loading(ProfileLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class ProfileRefreshingState implements ProfileState {
  const factory ProfileRefreshingState() = _$ProfileRefreshingState;
}

/// @nodoc
abstract class $InitialProfileStateCopyWith<$Res> {
  factory $InitialProfileStateCopyWith(
          InitialProfileState value, $Res Function(InitialProfileState) then) =
      _$InitialProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $InitialProfileStateCopyWith<$Res> {
  _$InitialProfileStateCopyWithImpl(
      InitialProfileState _value, $Res Function(InitialProfileState) _then)
      : super(_value, (v) => _then(v as InitialProfileState));

  @override
  InitialProfileState get _value => super._value as InitialProfileState;
}

/// @nodoc
class _$InitialProfileState implements InitialProfileState {
  const _$InitialProfileState();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(Profile profile),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(Profile profile),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProfileErrorState value),
    @required TResult refreshing(ProfileRefreshingState value),
    @required TResult initial(InitialProfileState value),
    @required TResult loaded(ProfileLoadedState value),
    @required TResult loading(ProfileLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProfileErrorState value),
    TResult refreshing(ProfileRefreshingState value),
    TResult initial(InitialProfileState value),
    TResult loaded(ProfileLoadedState value),
    TResult loading(ProfileLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialProfileState implements ProfileState {
  const factory InitialProfileState() = _$InitialProfileState;
}

/// @nodoc
abstract class $ProfileLoadedStateCopyWith<$Res> {
  factory $ProfileLoadedStateCopyWith(
          ProfileLoadedState value, $Res Function(ProfileLoadedState) then) =
      _$ProfileLoadedStateCopyWithImpl<$Res>;
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class _$ProfileLoadedStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileLoadedStateCopyWith<$Res> {
  _$ProfileLoadedStateCopyWithImpl(
      ProfileLoadedState _value, $Res Function(ProfileLoadedState) _then)
      : super(_value, (v) => _then(v as ProfileLoadedState));

  @override
  ProfileLoadedState get _value => super._value as ProfileLoadedState;

  @override
  $Res call({
    Object profile = freezed,
  }) {
    return _then(ProfileLoadedState(
      profile: profile == freezed ? _value.profile : profile as Profile,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
class _$ProfileLoadedState implements ProfileLoadedState {
  const _$ProfileLoadedState({@required this.profile})
      : assert(profile != null);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileState.loaded(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileLoadedState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $ProfileLoadedStateCopyWith<ProfileLoadedState> get copyWith =>
      _$ProfileLoadedStateCopyWithImpl<ProfileLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(Profile profile),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return loaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(Profile profile),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProfileErrorState value),
    @required TResult refreshing(ProfileRefreshingState value),
    @required TResult initial(InitialProfileState value),
    @required TResult loaded(ProfileLoadedState value),
    @required TResult loading(ProfileLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProfileErrorState value),
    TResult refreshing(ProfileRefreshingState value),
    TResult initial(InitialProfileState value),
    TResult loaded(ProfileLoadedState value),
    TResult loading(ProfileLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadedState implements ProfileState {
  const factory ProfileLoadedState({@required Profile profile}) =
      _$ProfileLoadedState;

  Profile get profile;
  @JsonKey(ignore: true)
  $ProfileLoadedStateCopyWith<ProfileLoadedState> get copyWith;
}

/// @nodoc
abstract class $ProfileLoadingStateCopyWith<$Res> {
  factory $ProfileLoadingStateCopyWith(
          ProfileLoadingState value, $Res Function(ProfileLoadingState) then) =
      _$ProfileLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileLoadingStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileLoadingStateCopyWith<$Res> {
  _$ProfileLoadingStateCopyWithImpl(
      ProfileLoadingState _value, $Res Function(ProfileLoadingState) _then)
      : super(_value, (v) => _then(v as ProfileLoadingState));

  @override
  ProfileLoadingState get _value => super._value as ProfileLoadingState;
}

/// @nodoc
class _$ProfileLoadingState implements ProfileLoadingState {
  const _$ProfileLoadingState();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(Profile profile),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(Profile profile),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProfileErrorState value),
    @required TResult refreshing(ProfileRefreshingState value),
    @required TResult initial(InitialProfileState value),
    @required TResult loaded(ProfileLoadedState value),
    @required TResult loading(ProfileLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProfileErrorState value),
    TResult refreshing(ProfileRefreshingState value),
    TResult initial(InitialProfileState value),
    TResult loaded(ProfileLoadedState value),
    TResult loading(ProfileLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadingState implements ProfileState {
  const factory ProfileLoadingState() = _$ProfileLoadingState;
}
