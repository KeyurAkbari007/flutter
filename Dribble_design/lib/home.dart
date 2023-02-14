import 'package:dribble_design/Second_page.dart';
import 'package:dribble_design/third_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> user = [];

  void initUser() {
    Map<String, dynamic> map = {};
    map['Image'] = 'assets/images/first.jpg';
    map['Name'] = 'yash hoodie';
    map['Price'] = '\$50.00';
    user.add(map);

    map = {};
    map['Image'] = 'assets/images/second.jpg';
    map['Name'] = 'jenil hoodie';
    map['Price'] = '\$100.00';
    user.add(map);

    map = {};
    map['Image'] = 'assets/images/third.jpg';
    map['Name'] = 'jadu hoodie';
    map['Price'] = '\$10.00';
    user.add(map);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      child: Container(
                                        child: Center(
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            width: 160,
                                            height: 60,
                                            margin: EdgeInsets.only(
                                                right: 40, top: 50),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade300,
                                                borderRadius: BorderRadius
                                                    .circular(25)),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                        color: Colors.white),
                                                    child: const Center(
                                                        child: Icon(
                                                          Icons.menu_rounded,
                                                          size: 40,
                                                        )),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 15),
                                                    child: const Text(
                                                      'Menu',
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          letterSpacing: 2),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      child: Container(
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        SecondPage(),));
                                            },
                                            child: Container(
                                              width: 60,
                                              height: 60,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade400,
                                                  borderRadius: BorderRadius
                                                      .circular(50)),
                                              margin: EdgeInsets.only(
                                                  top: 50, left: 110),
                                              child: const Icon(
                                                Icons.shopping_basket,
                                                size: 35,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            )),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: const Text(
                              "Explore Our\nClothes Collections",
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.lightBlue.shade100,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Container(
                            alignment: Alignment.center,
                            height: 350,
                            margin: const EdgeInsets.only(bottom: 50),
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Third_page(),
                                            settings: RouteSettings(
                                                arguments:user[index])));
                                  },
                                  child: Container(
                                    width: 250,
                                    // height: 100,
                                    margin: const EdgeInsets.only(left: 70),
                                    alignment: Alignment.center,

                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            width: 150,
                                            padding: const EdgeInsets.all(10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 5),
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          user[index]["Image"]),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                              width: 150,
                                              alignment: Alignment.center,
                                              child: Text(
                                                user[index]['Name'],
                                                style: const TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight
                                                        .bold),
                                              ),
                                            )),
                                        Expanded(
                                            child: Container(
                                              width: 150,
                                              alignment: Alignment.center,
                                              child: Text(
                                                user[index]['Price'],
                                                style: const TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight
                                                        .bold),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: user.length,
                              scrollDirection: Axis.horizontal,
                            )),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                width: size.width,
                                height: 80,
                                child: Stack(
                                  children: [
                                    CustomPaint(
                                      size: Size(size.width, 80),
                                      painter: BNBpainter(),
                                    ),
                                    Center(
                                      heightFactor: 0.6,
                                      child: FloatingActionButton(
                                        onPressed: () {},
                                        backgroundColor: Colors.indigo,
                                        elevation: 0.1,
                                        child: const Icon(
                                            Icons.shopping_basket),
                                      ),
                                    ),
                                    Container(
                                      width: size.width,
                                      height: 80,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.home)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.heart_broken)),
                                          Container(
                                            width: size.width * 0.20,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.notifications)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.person))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 260,
            left: 35,
            child: Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, //color of border
                    width: 1,
                    //width of border
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // width: ,
                      margin: EdgeInsets.only(left: 8),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'search Your clothes'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BNBpainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()
      ..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        // ignore: prefer_const_constructors
        radius: Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
