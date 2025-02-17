// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Recommendation> _$recommendationSerializer =
    new _$RecommendationSerializer();

class _$RecommendationSerializer
    implements StructuredSerializer<Recommendation> {
  @override
  final Iterable<Type> types = const [Recommendation, _$Recommendation];
  @override
  final String wireName = 'Recommendation';

  @override
  Iterable<Object?> serialize(Serializers serializers, Recommendation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.recommendationId,
          specifiedType: const FullType(int)),
      'foodItem',
      serializers.serialize(object.foodItem,
          specifiedType: const FullType(FoodItem)),
    ];

    return result;
  }

  @override
  Recommendation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecommendationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.recommendationId = serializers.deserialize(value,
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

class _$Recommendation extends Recommendation {
  @override
  final int recommendationId;
  @override
  final FoodItem foodItem;

  factory _$Recommendation([void Function(RecommendationBuilder)? updates]) =>
      (new RecommendationBuilder()..update(updates))._build();

  _$Recommendation._({required this.recommendationId, required this.foodItem})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        recommendationId, r'Recommendation', 'recommendationId');
    BuiltValueNullFieldError.checkNotNull(
        foodItem, r'Recommendation', 'foodItem');
  }

  @override
  Recommendation rebuild(void Function(RecommendationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendationBuilder toBuilder() =>
      new RecommendationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Recommendation &&
        recommendationId == other.recommendationId &&
        foodItem == other.foodItem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recommendationId.hashCode);
    _$hash = $jc(_$hash, foodItem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Recommendation')
          ..add('recommendationId', recommendationId)
          ..add('foodItem', foodItem))
        .toString();
  }
}

class RecommendationBuilder
    implements Builder<Recommendation, RecommendationBuilder> {
  _$Recommendation? _$v;

  int? _recommendationId;
  int? get recommendationId => _$this._recommendationId;
  set recommendationId(int? recommendationId) =>
      _$this._recommendationId = recommendationId;

  FoodItemBuilder? _foodItem;
  FoodItemBuilder get foodItem => _$this._foodItem ??= new FoodItemBuilder();
  set foodItem(FoodItemBuilder? foodItem) => _$this._foodItem = foodItem;

  RecommendationBuilder();

  RecommendationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recommendationId = $v.recommendationId;
      _foodItem = $v.foodItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Recommendation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Recommendation;
  }

  @override
  void update(void Function(RecommendationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Recommendation build() => _build();

  _$Recommendation _build() {
    _$Recommendation _$result;
    try {
      _$result = _$v ??
          new _$Recommendation._(
            recommendationId: BuiltValueNullFieldError.checkNotNull(
                recommendationId, r'Recommendation', 'recommendationId'),
            foodItem: foodItem.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'foodItem';
        foodItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Recommendation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
