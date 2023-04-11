// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/components/cart_counter.dart';
// import 'package:food_app_flutter/screens/components/food_model.dart';
import 'package:food_app_flutter/screens/home_page.dart';
// import 'package:food_app_flutter/constants.dart';
// import 'package:food_app_flutter/screens/components/categories.dart';
// import 'package:food_app_flutter/models/product.dart';
// import 'package:food_app_flutter/screens/components/item_card.dart';

void main() {
  runApp(const SetsPage());
}

class SetsPage extends StatelessWidget {
  const SetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            iconSize: 40,
            color: Colors.teal,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const HomePage();
              }));
            },
            // ScaffoldMessenger.of(context).showSnackBar(
            //     const SnackBar(content: Text('Icon button is pressed')));

            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          actions: [
            IconButton(
              iconSize: 40,
              color: Colors.teal,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return AppBar();
                }));
              },
              // ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text('Icon button is pressed')));

              icon: const Icon(
                Icons.shopping_cart_checkout_sharp,
              ),
            ),
          ],
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Padding(
            padding: const EdgeInsets.all(1.0),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(4),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              children: menuButton(context),
            )));
  }

  List<Widget> menuButton(BuildContext context) {
    return <Widget>[
      Column(children: [
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
        const SizedBox(
          height: 12,
        ),
        const Text(
          'XS Set(26pcs)  ',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              )),
              context: context,
              builder: (context) => Container(
                  height: MediaQuery.of(context).size.height * 0.61,
                  child: buildSheet()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            shape: const StadiumBorder(),
          ),
          child: const Text('Add'),
        ),
      ]),
      Column(children: [
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
        const SizedBox(
          height: 12,
        ),
        const Text(
          'XS Set(26pcs)  ',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const SetsPage();
            }));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            shape: const StadiumBorder(),
          ),
          child: const Text('Test'),
        ),
      ]),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[200],
        child: const Text('Heed not the rabble'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[300],
        child: const Text('Sound of screams but the'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[400],
        child: const Text('Who scream'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[500],
        child: const Text('Revolution is coming...'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[600],
        child: const Text('Revolution, they...'),
      ),
    ];
  }

  Widget buildSheet() => Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/special.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: const Text(
              'XS Set(26pcs.)',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: const Text(
              '21,00 m',
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: const Text(
              'Kappa maki baked roll, spicy shrimp roll,'
              'hot kani roll(sesame and caviar may be a different color than in the photo)',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 12),
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue.withOpacity(0.1),
                  ),
                  child: const CartCounter()),
              Container(
                margin: const EdgeInsets.only(right: 5),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.teal,
                ),
                child: const Text(
                  'Add to order 20 m',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          )
        ],
      );
}
