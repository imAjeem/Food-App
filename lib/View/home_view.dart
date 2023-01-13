import 'package:flutter/material.dart';
import 'package:food_delhivery_app/View/product_overview/product_overview.dart';

import 'Home/single_product_view.dart';

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
      drawer: Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.black45,
                      radius: 45,
                      child: CircleAvatar(
                        radius: 43,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Welcome Guest"),
                        const SizedBox(
                          height: 7,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              listTile(title: "Home", icon: Icons.home_outlined),
              listTile(title: "Review Cart", icon: Icons.shop_outlined),
              listTile(title: "My Profile", icon: Icons.person_outline),
              listTile(title: "Notification", icon: Icons.notifications_none),
              listTile(title: "Rating & Review", icon: Icons.star_outline),
              listTile(title: "Wishlist", icon: Icons.favorite_border),
              listTile(
                  title: "Raise a Complaint", icon: Icons.list_alt_outlined),
              listTile(title: "FAQs", icon: Icons.group_outlined),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Contact Support"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text("Call us"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("8630385886"),
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Mail us"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("mhoajeem13@gmail.com"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
              child: Row(children: [
                SingleProductView(
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(),
                        ));
                  },
                  productImage: "assets/image/png.png",
                  productName: "Fresh flock",
                ),
                SingleProductView(
                  onPress: () {},
                  productImage: "assets/image/png.png",
                  productName: "Fresh flock",
                ),
                SingleProductView(
                  onPress: () {},
                  productImage: "assets/image/png.png",
                  productName: "Fresh flock",
                ),
                SingleProductView(
                  onPress: () {},
                  productImage: "assets/image/png.png",
                  productName: "Fresh flock",
                ),
              ]),
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
                  SingleProductView(
                    onPress: () {},
                    productImage: "assets/image/png.png",
                    productName: "Fresh flock",
                  ),
                  SingleProductView(
                    onPress: () {},
                    productImage: "assets/image/png.png",
                    productName: "Fresh flock",
                  ),
                  SingleProductView(
                    onPress: () {},
                    productImage: "assets/image/png.png",
                    productName: "Fresh flock",
                  ),
                  SingleProductView(
                    onPress: () {},
                    productImage: "assets/image/png.png",
                    productName: "Fresh flock",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }
}
