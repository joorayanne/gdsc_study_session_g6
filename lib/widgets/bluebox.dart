import 'package:flutter/material.dart';

class bluebox extends StatelessWidget {
  const bluebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 12, 79, 133),
            Color.fromARGB(255, 47, 139, 215)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(0, 2), blurRadius: 5)
          ]),
      child: const Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Sep 23, 2023",
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.format_quote_outlined,
                color: Colors.white,
                size: 30,
              ),
              Text(
                "Today a reader",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.format_quote_outlined,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
          Text(
            "tomorrow a",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Leader",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.translate,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.bookmark,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.share,
                size: 30,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
