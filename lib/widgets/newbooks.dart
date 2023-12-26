import 'package:book_store/widgets/booktile.dart';
import 'package:flutter/material.dart';

class newbooks extends StatefulWidget {
  const newbooks({super.key});

  @override
  State<newbooks> createState() => _newbooksState();
}

class _newbooksState extends State<newbooks> {
  final List<String> author = [
    "Robert Greene",
    "Paulo Coelho",
    "Rupi Kaur",
  ];
  final List<String> imagePath = [
    "assets/images/richpoor.jpg",
    "assets/images/theAlchemist.jpg",
    "assets/images/milkandhoney.jpg",
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
