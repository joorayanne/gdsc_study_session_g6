import 'package:book_store/widgets/booktile.dart';
import 'package:flutter/material.dart';

class myRecs extends StatefulWidget {
  const myRecs({super.key});

  @override
  State<myRecs> createState() => _myRecsState();
}

class _myRecsState extends State<myRecs> {
  final List<String> author = [
    "C.S Lewis",
    "George Orwell",
    "John Green",
  ];
  final List<String> imagePath = [
    'assets/images/MereChristianity.jpg',
    'assets/images/animalFarm.jpg',
    'assets/images/Tfios.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: author.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child:
                  booktile(author: author[index], imagePath: imagePath[index]),
            );
          }),
    );
  }
}
