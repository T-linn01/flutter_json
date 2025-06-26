import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    required int id,
    required String title,
    @JsonKey(name: 'author_name') required String authorName,
    @JsonKey(name: 'is_available') required bool isAvailable,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
