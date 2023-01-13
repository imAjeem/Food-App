import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: Text("Home"),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://media.gettyimages.com/id/1278807284/photo/carbohidrates-protein-and-dietary-fiber-shot-from-above-on-dark-background-copy-space.jpg?s=612x612&w=gi&k=20&c=O69lz6e1T1A921V0yIKdh4NfeMLb-PBIUDITofuoDFg="),
                    fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 120, bottom: 10),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Vegi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 3,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              "30% Off",
                              style: TextStyle(
                                  color: Colors.green[100],
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              "On all vegetables products",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Herbs Seasonings"),
                  Text("View all"),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Fresh Fruits"),
                  Text("View all"),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
              child: Image.asset(
                "assets/image/png.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Fresh Basil",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "50\$ /50 gm Basil",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "50grm",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.remove,
                                  color: Colors.amber,
                                  size: 15,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.amber,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
