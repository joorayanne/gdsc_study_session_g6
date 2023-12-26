import 'package:book_store/widgets/bluebox.dart';
import 'package:book_store/widgets/categories.dart';
import 'package:book_store/widgets/newbooks.dart';
import 'package:book_store/widgets/recommendations.dart';
import 'package:book_store/widgets/trending.dart';
import 'package:flutter/material.dart';
import 'package:book_store/salomon_bottom_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.sort),
        title: const Text(
          "GDSC BookStore",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: const [
        //search bar
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        scrollPadding: EdgeInsets.all(0),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          helperMaxLines: 1,
                          hintText: "Looking for...",
                          suffixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.tune,
                        size: 40,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              bluebox(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: Category(),
              ),
              //Recommendations

              Text(
                "Recommendations",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                child: myRecs(),
                height: 250,
              ),

              // new books

              Text(
                "New",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              /* SizedBox(child: newbooks()),*/
              // trendy books

              Text(
                "Trending",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10), /* SizedBox(child: trending()),*/
            ],
          ),
        ),
      ]),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: const Icon(Icons.library_books),
                title: const Text("data"),
                selectedColor: Colors.grey),
            SalomonBottomBarItem(
                icon: const Icon(Icons.book),
                title: const Text("Books"),
                selectedColor: Colors.teal),
            SalomonBottomBarItem(
              icon: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
                icon: const Icon(Icons.my_library_books_outlined),
                title: const Text("Libray"),
                selectedColor: Colors.blueAccent),
            SalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text("Account"),
                selectedColor: Colors.yellowAccent),
          ]),
    );
  }
}
