import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo_tuan2/list_view/screen/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              FontAwesomeIcons.arrowLeft,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          height: height,
          width: width,
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Ho Chi Minh City, Vietnamese',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey.shade300,
                          )),
                      child: const Icon(Icons.shopping_basket),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(255, 248, 230, 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: width / 20),
                        height: 150,
                        width: width / 2.21,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "10-minute\ndelivery",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(215, 153, 79, 1),
                              ),
                            ),
                            SizedBox(
                              height: width / 30,
                            ),
                            const Text(
                              "Enjoy your food in just 10\nminutes. Free Forever",
                              style: TextStyle(
                                color: Color.fromARGB(255, 158, 162, 153),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: width / 2.5,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/home_pizza/pizzagirl.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Explore cuisines",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 180,
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: pizzaTabs(
                        "Vietnamese",
                        "52",
                        "assets/images/home_pizza/pizza.png",
                      ),
                    ),
                    pizzaTabs(
                      "American",
                      "40",
                      "assets/images/home_pizza/burger.png",
                    ),
                    pizzaTabs(
                      "Italian",
                      "60",
                      "assets/images/home_pizza/mexican.png",
                    ),
                    pizzaTabs(
                      "Mexican",
                      "50",
                      "assets/images/home_pizza/drink.png",
                    ),
                    pizzaTabs(
                      "China",
                      "49",
                      "assets/images/home_pizza/americana.png",
                    ),
                    pizzaTabs(
                      "Spain",
                      "98",
                      "assets/images/home_pizza/pastry.png",
                    ),
                    pizzaTabs(
                      "Korea",
                      "57",
                      "assets/images/home_pizza/snack.png",
                    ),
                    pizzaTabs(
                      "Singapore",
                      "65",
                      "assets/images/home_pizza/veg.png",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: const [
                    Text(
                      "Restaurant in ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Ho Chi Minh, Vietnamese",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(215, 153, 79, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: restaurantsTabs("https://tinyurl.com/mr2d4zz6",
                          "Pizzeria Mazza", "Vietnamese", "4.9km"),
                    ),
                    restaurantsTabs("https://tinyurl.com/2rry3drx", "Taco Land",
                        "Vietnamese", "5.9km"),
                    restaurantsTabs("https://tinyurl.com/r52ru9sb", "Lamacun",
                        "Vietnamese", "2.9km"),
                    restaurantsTabs("https://tinyurl.com/mr2teub9",
                        "Tarte Flambee", "Vietnamese", "6.2km"),
                    restaurantsTabs("https://tinyurl.com/2t9ww6f9", "Sfiha",
                        "Vietnamese", "1.2km"),
                    restaurantsTabs("https://tinyurl.com/bddus68u",
                        "Zapiekanka", "Vietnamese", "3.1km"),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          // fixedColor: Colors.green,
          // type: BottomNavigationBarType.fixed,
          // iconSize: 30,
          // selectedFontSize: 18,
          // unselectedFontSize: 13,
          // items: const [
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.home),
          //     label: "Home",
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.favorite),
          //     label: "Favorite",
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.person),
          //     label: "User",
          //   ),
          // ],
          backgroundColor: const Color.fromARGB(255, 218, 203, 167),
          buttonBackgroundColor: Colors.white,
          animationCurve: Curves.decelerate,
          color: Colors.white,
          items: const [
            Icon(Icons.home, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget restaurantsTabs(
      String address, String name, String dish, String diatance) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const DetailPage()));
        },
        child: Container(
          width: width / 2.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: width / 2.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(address), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "$dish -$diatance - \$-10",
                style: const TextStyle(
                  color: Color.fromARGB(255, 158, 162, 153),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget pizzaTabs(String title, String no, String assetimage) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 170,
        width: width / 3.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(255, 248, 230, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "$no restaurants",
              style: const TextStyle(
                color: Color.fromARGB(255, 158, 162, 153),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image(
              image: AssetImage(assetimage),
              height: 80,
              width: 80,
            ),
          ],
        ),
      ),
    );
  }
}
