import 'dart:convert';
import 'package:flutter/material.dart';
import 'book.dart';

void main() {
  const String jsonString = '''
  {
    "id": 99,
    "title": "Lão Hạc",
    "author_name": "Nam Cao",
    "is_available": true
  }
  ''';

  final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  final Book myBook = Book.fromJson(jsonMap);
  print('ID: ${myBook.id}');
  print('Tên sách: ${myBook.title}');
  print('Tác giả: ${myBook.authorName}');
  print('Còn hàng: ${myBook.isAvailable}');
  print(myBook);

  runApp(MyApp(book: myBook));
}

class MyApp extends StatelessWidget {
  final Book book;
  const MyApp({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(book.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tác giả: ${book.authorName}', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text('Tình trạng: ${book.isAvailable ? "Còn hàng" : "Hết hàng"}', style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}