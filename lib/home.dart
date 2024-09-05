import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.menu),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Find Your element
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Find Your",
              style: TextStyle(fontSize: 40.0, color: Colors.grey),
            ),
          ),
          // Inspiration element
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Inspiration",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search you're looking for",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
                prefixIcon: const Icon(Icons.search),
                filled: true,
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Text(
                  "Promo Today",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                ),
              ),
              // Making Row Scrollabe
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 20.0),
                      child: Expanded(
                        child: getImage("assets/images/one.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 20.0),
                      child: Expanded(
                        child: getImage("assets/images/two.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 20.0),
                      child: Expanded(
                        child: getImage("assets/images/three.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 20.0),
                      child: Expanded(
                        child: getImage("assets/images/four.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      "assets/images/three.jpg",
                      width: 370,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget getImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        imagePath,
        width: 170,
        height: 170,
        fit: BoxFit.cover,
      ),
    );
  }
}
