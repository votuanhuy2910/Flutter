import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SlidingUpPanel(
          maxHeight: height,
          minHeight: height / 1.6,
          body: Container(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Image(
                  image: const NetworkImage(
                    "https://images.fullhouse.pizza/upload/blogs/pizza_95d07f7f0f33d0f0db68d559348e11be.jpg",
                  ),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),
                Positioned(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey.shade100,
          panel: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Pizzaria Di Mora",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "4.6",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Text(
                  "Vietnamese - 4.9km - \$-\$\$",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    menu(
                      Colors.green,
                      "Pizza",
                      "assets/images/home_pizza/pizza.png",
                      Colors.white,
                    ),
                    menu(
                      Colors.grey.shade300,
                      "Burger",
                      "assets/images/home_pizza/burger.png",
                      Colors.black,
                    ),
                    menu(
                      Colors.grey.shade300,
                      "Mexican",
                      "assets/images/home_pizza/mexican.png",
                      Colors.black,
                    ),
                    menu(
                      Colors.grey.shade300,
                      "Drinks",
                      "assets/images/home_pizza/drink.png",
                      Colors.black,
                    ),
                    menu(
                      Colors.grey.shade300,
                      "Taco",
                      "assets/images/home_pizza/americana.png",
                      Colors.black,
                    ),
                    menu(
                      Colors.grey.shade300,
                      "Pastry",
                      "assets/images/home_pizza/pastry.png",
                      Colors.black,
                    ),
                    menu(
                      Colors.grey.shade300,
                      "Snack",
                      "assets/images/home_pizza/snack.png",
                      Colors.black,
                    ),
                    menu(
                      Colors.grey.shade300,
                      "Veg",
                      "assets/images/home_pizza/veg.png",
                      Colors.black,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Column(
                  children: [
                    menuItemtab(
                      "assets/images/home_pizza/classic.png",
                      "Classic",
                      "Tamota sauce, cheese",
                      "6.99",
                    ),
                    menuItemtab(
                      "assets/images/home_pizza/classic.png",
                      "Snack",
                      "Tamota sauce, cheese",
                      "6.99",
                    ),
                    menuItemtab(
                      "assets/images/home_pizza/classic.png",
                      "Drink",
                      "Tamota sauce, cheese",
                      "6.99",
                    ),
                    menuItemtab(
                      "assets/images/home_pizza/classic.png",
                      "Drink",
                      "Tamota sauce, cheese",
                      "6.99",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItemtab(
      String pizzaImage, String pizza, String ingredients, String price) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 100,
        width: width - 40,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Container(
                padding: EdgeInsets.only(left: 70, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 100,
                width: width - 90,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          pizza,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          ingredients,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\$$price",
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: Image(
                image: AssetImage(pizzaImage),
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menu(Color colore, String menu, String menuImage, Color menuColor) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colore,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(menuImage),
              fit: BoxFit.contain,
              height: 30,
              width: 30,
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                menu,
                style: TextStyle(
                  fontSize: 14,
                  color: menuColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
