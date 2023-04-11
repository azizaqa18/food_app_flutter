// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, duplicate_ignore

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:food_app_flutter/screens/card_page.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
import 'sets_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // double myHeight = MediaQuery.of(context).size.height;
    // double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      // ignore: sort_child_properties_last
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const []),
        // bottomNavigationBar: GNav(
        //     backgroundColor: Colors.black,
        //     // rippleColor: Colors.grey, // tab button ripple color when pressed
        //     // hoverColor: Colors.red, // tab button hover color
        //     // haptic: true, // haptic feedback
        //     // tabBorderRadius: 15,
        //     tabActiveBorder:
        //         Border.all(color: Colors.black, width: 1), // tab button border
        //     tabBorder:
        //         Border.all(color: Colors.grey, width: 1), // tab button border
        //     tabShadow: [
        //       BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
        //     ], // tab button shadow
        //     curve: Curves.easeOutExpo, // tab animation curves
        //     duration:
        //         const Duration(milliseconds: 900), // tab animation duration
        //     gap: 8, // the tab button gap between icon and text
        //     color: Colors.teal, // unselected icon color
        //     activeColor: Colors.teal, // selected icon and text color
        //     iconSize: 24, // tab button icon size
        //     tabBackgroundColor:
        //         Colors.white.withOpacity(0.1), // selected tab background color
        //     padding: const EdgeInsets.symmetric(
        //         horizontal: 20, vertical: 5), // navigation bar padding
        //     tabs: const [
        //       GButton(
        //         icon: Icons.add_shopping_cart_sharp,
        //         iconColor: Colors.white,
        //         text: 'My Orders 0',
        //       ),
        //       GButton(
        //         icon: Icons.favorite_border,
        //         iconColor: Colors.white,
        //         text: 'Favorites',
        //       ),
        //       GButton(
        //         icon: Icons.search,
        //         iconColor: Colors.white,
        //         text: 'Search',
        //       ),
        //       GButton(
        //         icon: Icons.message,
        //         iconColor: Colors.white,
        //         text: 'Messages',
        //       )
        //     ]),
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          // ignore: sort_child_properties_last
          child: AppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img2.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
        // drawer: Drawer(
        //   child: ListView(children: [
        //     const DrawerHeader(
        //       decoration: BoxDecoration(
        //         color: Colors.black,
        //       ),
        //       child: Text(
        //         'My Page',
        //         style: TextStyle(color: Colors.white, fontSize: 20),
        //       ),
        //     ),
        //     InkWell(
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: ((context) => const CardPage())));
        //       },
        //       child: const ListTile(
        //         title: Text('My orders'),
        //         leading: Icon(
        //           Icons.shopping_cart_checkout_sharp,
        //           color: Colors.black,
        //         ),
        //       ),
        //     ),
        //     InkWell(
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: ((context) => const SetsPage())));
        //       },
        //       child: const ListTile(
        //         title: Text('Log out'),
        //         leading: Icon(
        //           Icons.logout,
        //           color: Colors.black,
        //         ),
        //       ),
        //     ),
        //   ]),
        // ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Takeshi Sumgait',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Text(
                'Delicious sushi at Takeshi sushi 🍣',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.sentiment_very_satisfied_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Excellent 9.2',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.grey),
                )),
                child: Row(
                  children: const [
                    Icon(
                      Icons.timer,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Opens at 11:00 - Closes at 01:00',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Today's Special",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.grey),
                )),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Combo Menu😍",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Cool Set(26 pcs.) + French fries + Cola 330ml + kjhjk"
                            "djbhcjhd jdc bhejh dcb ejhb cje hj dhd jc hj juh jhb ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '35,00 ₼',
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/special.jpg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 5.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: 5.0,
                ),
                height: 140.0,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40.0),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/special.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const SetsPage();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              foregroundColor: Colors.white,
                              shape: const StadiumBorder(),
                            ),
                            child: const Text('Read'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
