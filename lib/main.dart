import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.more_vert_rounded),
              color: Colors.black,
              onPressed: () {},
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.blue,
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/3.png"),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Ink.image(
                  image: const AssetImage("assets/images/grad.png"),
                  width: 30,
                  height: 30,
                ),
                Ink.image(
                  image: const AssetImage("assets/images/group.png"),
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Ink.image(
                  image: const AssetImage("assets/images/book.png"),
                  width: 30,
                  height: 30,
                ),
                Ink.image(
                  image: const AssetImage("assets/images/profile.png"),
                  // colorFilter: ColorFilter.mode(Colors.blue),
                  width: 35,
                  height: 35,
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                        decoration: BoxDecoration(
                          // image: DecorationImage(
                          //     image: AssetImage("assets/images/1.png"),
                          //     fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          "assets/images/1.png",
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      )),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 100,
                                width: 100,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  // shape: BoxShape.circle
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(color: Colors.white, width: 6),
                                ),
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Image(
                                    image: AssetImage("assets/images/p.png"),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ),
                          Positioned(
                              bottom: 8,
                              // left: ,
                              left: MediaQuery.of(context).size.width / 2 + 15,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  color: Colors.black,
                                  iconSize: 16,
                                  icon: const Icon(Icons.edit),
                                  onPressed: () {},
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 4),
                  child: Text(
                    "Tanush Agarwal",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text("23IM10040", style: TextStyle(fontSize: 15)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      children: [
                        kTile(
                          heading: "Mentor",
                          value: "Aaryan Rane",
                        ),
                        kTile(
                          heading: "Department",
                          value: "Department of Industrial Engineering",
                        ),
                        kTile(
                          heading: "Facad",
                          value: "Prof. Bhargab Maitra",
                        ),
                        kTile(
                          heading: "Hall Warden",
                          value: "Prof. Sanjib Kumar Patra",
                        ),
                        kTile(
                          heading: "B.C. ROY Ambulance",
                          value: "03222 281 008",
                        ),
                        kTile(
                          heading: "Counselling Center",
                          value: "03222 281 001",
                        ),
                        kTile(
                          heading: "Mentor",
                          value: "Aaryan Rane",
                        ),

                        // kTile(),
                        // kTile(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class kTile extends StatelessWidget {
  final String heading;
  final String value;
  const kTile({
    super.key,
    required this.heading,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white, width: 1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                    color: Color.fromRGBO(166, 127, 63, 1),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right_rounded,
                  size: 42,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
