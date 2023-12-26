import 'dart:io';

import 'package:flutter/material.dart';

class booktile extends StatelessWidget {
  const booktile({
    super.key,
    required this.author,
    required this.imagePath,
  });
  final String author;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // image
          Image.file(
            File(imagePath),
            height: 140,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),

          //author and title
          Text(
            author,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 22,
            ),
          )
        ],
      ),
    );
  }
}
