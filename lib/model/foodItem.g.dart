// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodItem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodItem> _$foodItemSerializer = new _$FoodItemSerializer();

class _$FoodItemSerializer implements StructuredSerializer<FoodItem> {
  @override
  final Iterable<Type> types = const [FoodItem, _$FoodItem];
  @override
  final String wireName = 'FoodItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, FoodItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'desc',
      serializers.serialize(object.desc, specifiedType: const FullType(String)),
      'calory',
      serializers.serialize(object.calory, specifiedType: const FullType(int)),
      'unit_price',
      serializers.serialize(object.unitPrice,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating, specifiedType: const FullType(int)),
      'collection',
      serializers.serialize(object.collection,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  FoodItem deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'calory':
          result.calory = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'unit_price':
          result.unitPrice = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'collection':
          result.collection = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodItem extends FoodItem {
  @override
  final String name;
  @override
  final String desc;
  @override
  final int calory;
  @override
  final String unitPrice;
  @override
  final int rating;
  @override
  final int collection;

  factory _$FoodItem([void Function(FoodItemBuilder)? updates]) =>
      (new FoodItemBuilder()..update(updates))._build();

  _$FoodItem._(
      {required this.name,
      required this.desc,
      required this.calory,
      required this.unitPrice,
      required this.rating,
      required this.collection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'FoodItem', 'name');
    BuiltValueNullFieldError.checkNotNull(desc, r'FoodItem', 'desc');
    BuiltValueNullFieldError.checkNotNull(calory, r'FoodItem', 'calory');
    BuiltValueNullFieldError.checkNotNull(unitPrice, r'FoodItem', 'unitPrice');
    BuiltValueNullFieldError.checkNotNull(rating, r'FoodItem', 'rating');
    BuiltValueNullFieldError.checkNotNull(
        collection, r'FoodItem', 'collection');
  }

  @override
  FoodItem rebuild(void Function(FoodItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodItemBuilder toBuilder() => new FoodItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodItem &&
        name == other.name &&
        desc == other.desc &&
        calory == other.calory &&
        unitPrice == other.unitPrice &&
        rating == other.rating &&
        collection == other.collection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, calory.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoodItem')
          ..add('name', name)
          ..add('desc', desc)
          ..add('calory', calory)
          ..add('unitPrice', unitPrice)
          ..add('rating', rating)
          ..add('collection', collection))
        .toString();
  }
}

class FoodItemBuilder implements Builder<FoodItem, FoodItemBuilder> {
  _$FoodItem? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  int? _calory;
  int? get calory => _$this._calory;
  set calory(int? calory) => _$this._calory = calory;

  String? _unitPrice;
  String? get unitPrice => _$this._unitPrice;
  set unitPrice(String? unitPrice) => _$this._unitPrice = unitPrice;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _collection;
  int? get collection => _$this._collection;
  set collection(int? collection) => _$this._collection = collection;

  FoodItemBuilder();

  FoodItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _desc = $v.desc;
      _calory = $v.calory;
      _unitPrice = $v.unitPrice;
      _rating = $v.rating;
      _collection = $v.collection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodItem;
  }

  @override
  void update(void Function(FoodItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodItem build() => _build();

  _$FoodItem _build() {
    final _$result = _$v ??
        new _$FoodItem._(
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'FoodItem', 'name'),
          desc:
              BuiltValueNullFieldError.checkNotNull(desc, r'FoodItem', 'desc'),
          calory: BuiltValueNullFieldError.checkNotNull(
              calory, r'FoodItem', 'calory'),
          unitPrice: BuiltValueNullFieldError.checkNotNull(
              unitPrice, r'FoodItem', 'unitPrice'),
          rating: BuiltValueNullFieldError.checkNotNull(
              rating, r'FoodItem', 'rating'),
          collection: BuiltValueNullFieldError.checkNotNull(
              collection, r'FoodItem', 'collection'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
