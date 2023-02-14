import 'package:flutter/material.dart';

class Third_page extends StatefulWidget {
  @override
  State<Third_page> createState() => _Third_pageState();
}

class _Third_pageState extends State<Third_page> {
  @override
  Widget build(BuildContext context) {
    final a = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    width: 160,
                                    height: 60,
                                    margin: EdgeInsets.only(right: 30, top: 20),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white),
                                            child: const Center(
                                                child: Icon(
                                              Icons.arrow_back,
                                              size: 40,
                                            )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 15),
                                            child: const Text(
                                              'Back',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 2),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        child: Container(
                          margin: EdgeInsets.only(left: 40, top: 25),
                          child: const Center(
                              child: Text(
                            'Product',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          )),
                        ),
                      ))
                    ],
                  )),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Center(
                        child: ClipOval(
                      child: Container(
                        child: Image.asset(
                          a['Image'],
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        ),

                      ),
                    )),
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      height: 80,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            a['Name'],
                            style: const TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Text(
                           a['Price'],
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      )),
                  Container(
                    height: 80,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Text(
                            'S',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle,
                            color: Colors.indigo,
                          ),
                          child: const Center(
                              child: Text(
                            'M',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Text(
                            'L',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Text(
                            'XL',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.indigo, width: 2)),
                                child: Center(
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pink.shade300,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepOrange,
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.yellow,
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        )),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.indigo,
                                    shape: BoxShape.circle),
                                margin: EdgeInsets.only(left: 10),
                                padding: EdgeInsets.all(3),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    '01',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo),
                                  )),
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.indigo),
                                    shape: BoxShape.circle),
                                margin: EdgeInsets.only(left: 10),
                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    size: 35,
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: const Text('Lorem ipsum is a dummy text without a'
                          'ny sense. It is a sequence of Lat'
                          'in words that, as they are positioned, do not for'
                          'm sentences with a complete sense, but give life to a'
                          ' test text useful to fill spaces that will subseque'
                          'ntly be occupied from ad hoc texts composed by commu'
                          'nication professionals. Lorem ipsum is a dummy text without a'
                          'ny sense. It is a sequence of Lat'
                          'in words that, as they are positioned, do not for'
                          'm sentences with a complete sense, but give life to a'
                          ' test text useful to fill spaces that will subseque'
                          'ntly be occupied from ad hoc texts composed by commu'
                          'nication professionals'
                          'Lorem ipsum is a dummy text without a'
                          'ny sense. It is a sequence of Lat'
                          'in words that, as they are positioned, do not for'
                          'm sentences with a complete sense, but give life to a'
                          ' test text useful to fill spaces that will subseque'
                          'ntly be occupied from ad hoc texts composed by commu'
                          'nication professionals. Lorem ipsum is a dummy text without a'
                          'ny sense. It is a sequence of Lat'
                          'in words that, as they are positioned, do not for'
                          'm sentences with a complete sense, but give life to a'
                          ' test text useful to fill spaces that will subseque'
                          'ntly be occupied from ad hoc texts composed by commu'
                          'nication professionals..'),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
      bottomNavigationBar: Container(
          child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.indigo, borderRadius: BorderRadius.circular(50)),
            width: 350,
            height: 100,
            child: const Center(
                child: Text(
              'Add to Cart',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2),
            )),
          ),
        ),
      )),
    );
  }
}
