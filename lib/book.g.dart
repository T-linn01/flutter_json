// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Book _$BookFromJson(Map<String, dynamic> json) => _Book(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  authorName: json['author_name'] as String,
  isAvailable: json['is_available'] as bool,
);

Map<String, dynamic> _$BookToJson(_Book instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'author_name': instance.authorName,
  'is_available': instance.isAvailable,
};
