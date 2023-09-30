// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      discountPercintage: (json['discountPercintage'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      brand: json['brand'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercintage': instance.discountPercintage,
      'rating': instance.rating,
      'brand': instance.brand,
      'category': instance.category,
    };
