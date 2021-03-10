// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

// ignore: unused_element
  _CartState call({@required List<Cart> carts}) {
    return _CartState(
      carts: carts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  List<Cart> get carts;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({List<Cart> carts});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object carts = freezed,
  }) {
    return _then(_value.copyWith(
      carts: carts == freezed ? _value.carts : carts as List<Cart>,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Cart> carts});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object carts = freezed,
  }) {
    return _then(_CartState(
      carts: carts == freezed ? _value.carts : carts as List<Cart>,
    ));
  }
}

/// @nodoc
class _$_CartState implements _CartState {
  const _$_CartState({@required this.carts}) : assert(carts != null);

  @override
  final List<Cart> carts;

  @override
  String toString() {
    return 'CartState(carts: $carts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.carts, carts) ||
                const DeepCollectionEquality().equals(other.carts, carts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(carts);

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState({@required List<Cart> carts}) = _$_CartState;

  @override
  List<Cart> get carts;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith;
}
