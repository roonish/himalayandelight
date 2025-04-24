// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Favourite> _$favouriteSerializer = new _$FavouriteSerializer();

class _$FavouriteSerializer implements StructuredSerializer<Favourite> {
  @override
  final Iterable<Type> types = const [Favourite, _$Favourite];
  @override
  final String wireName = 'Favourite';

  @override
  Iterable<Object?> serialize(Serializers serializers, Favourite object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.favId, specifiedType: const FullType(int)),
      'foodItem',
      serializers.serialize(object.foodItem,
          specifiedType: const FullType(FoodItem)),
    ];

    return result;
  }

  @override
  Favourite deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavouriteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.favId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'foodItem':
          result.foodItem.replace(serializers.deserialize(value,
              specifiedType: const FullType(FoodItem))! as FoodItem);
          break;
      }
    }

    return result.build();
  }
}

class _$Favourite extends Favourite {
  @override
  final int favId;
  @override
  final FoodItem foodItem;

  factory _$Favourite([void Function(FavouriteBuilder)? updates]) =>
      (new FavouriteBuilder()..update(updates))._build();

  _$Favourite._({required this.favId, required this.foodItem}) : super._() {
    BuiltValueNullFieldError.checkNotNull(favId, r'Favourite', 'favId');
    BuiltValueNullFieldError.checkNotNull(foodItem, r'Favourite', 'foodItem');
  }

  @override
  Favourite rebuild(void Function(FavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavouriteBuilder toBuilder() => new FavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Favourite &&
        favId == other.favId &&
        foodItem == other.foodItem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, favId.hashCode);
    _$hash = $jc(_$hash, foodItem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Favourite')
          ..add('favId', favId)
          ..add('foodItem', foodItem))
        .toString();
  }
}

class FavouriteBuilder implements Builder<Favourite, FavouriteBuilder> {
  _$Favourite? _$v;

  int? _favId;
  int? get favId => _$this._favId;
  set favId(int? favId) => _$this._favId = favId;

  FoodItemBuilder? _foodItem;
  FoodItemBuilder get foodItem => _$this._foodItem ??= new FoodItemBuilder();
  set foodItem(FoodItemBuilder? foodItem) => _$this._foodItem = foodItem;

  FavouriteBuilder();

  FavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favId = $v.favId;
      _foodItem = $v.foodItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Favourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Favourite;
  }

  @override
  void update(void Function(FavouriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Favourite build() => _build();

  _$Favourite _build() {
    _$Favourite _$result;
    try {
      _$result = _$v ??
          new _$Favourite._(
            favId: BuiltValueNullFieldError.checkNotNull(
                favId, r'Favourite', 'favId'),
            foodItem: foodItem.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'foodItem';
        foodItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Favourite', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
