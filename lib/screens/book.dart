import 'package:flutter/material.dart';

import '../models/book.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Name : ',
                style: TextStyle(
                  fontSize: 30,
                )),
            Text(
              book.name,
              style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Gener : ',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              book.gener.name,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 45),
            ),
          ],
        ),
      ),
    );
  }
}
