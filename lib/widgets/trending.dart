import 'package:flutter/material.dart';
import 'package:book_store/widgets/booktile.dart';

class trending extends StatefulWidget {
  const trending({super.key});

  @override
  State<trending> createState() => _trendingState();
}

class _trendingState extends State<trending> {
  final List<String> author = [
    "Trevor Noah",
    "C.S Lewis",
    "George Orwell",
    "Sylvia Plath"
  ];
  final List<String> imagePath = [
    " assets/images/bornacrime.jpg",
    "assets/images/narnia.jpg",
    "assets/images/1984.jpg",
    "assets/images/thebelljar.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: author.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: booktile(author: author[index], imagePath: imagePath[index]),
          );
        });
  }
}
