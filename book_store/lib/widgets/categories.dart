import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> text = [
    'Science',
    'Technology',
    'Histroy',
    'Philosophy',
    'Health'
  ];
  List<Icon> icons = const [
    Icon(Icons.science),
    Icon(Icons.satellite_alt),
    Icon(Icons.history_edu),
    Icon(Icons.book),
    Icon(Icons.medical_information_sharp)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: StyledButton(name: text[index], icon: icons[index]),
          );
        });
  }
}

class StyledButton extends StatelessWidget {
  const StyledButton({super.key, required this.name, required this.icon});
  final String name;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.only(left: 10, right: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 242, 231, 231)),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
