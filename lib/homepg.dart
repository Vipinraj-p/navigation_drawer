import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "Images/Cycling.png",
                    width: 80,
                  ),
                  Text("Traveling",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                  Text("www.example.com",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("Cycling"),
            ),
            ListTile(
              leading: Icon(Icons.directions_bus_sharp),
              title: Text("Bus"),
            ),
            ListTile(
              leading: Icon(Icons.flight_takeoff),
              title: Text("plane"),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Profile",
                style: TextStyle(color: Colors.black45),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Communicate",
                style: TextStyle(color: Colors.black45),
              ),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("Rate Us"),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Text(
                      "Traveling",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Start a new journey",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.black38),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Image.asset(
                "Images/Cycling.png",
                width: 200,
              )
            ],
          ),
          SizedBox(
            width: 700,
            height: 600,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: titles.length,
              itemBuilder: (context, index) {
                return GridTile(
                    child: Column(
                  children: [
                    Image.asset(
                      img[index],
                      width: 80,
                    ),
                    Text(titles[index],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500))
                  ],
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}

List img = [
  "Images/Walking.jpg",
  "Images/Boating.jpg",
  "Images/bus.webp",
  "Images/train.jpg",
  "Images/Cycling.png",
  "Images/Plane.jpg"
];

List titles = ["Walking", "Boating", "Bus", "Train", "Cycling", "Aeroplane"];
