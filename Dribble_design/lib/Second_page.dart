import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 2,
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
                            'Cart',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          )),
                        ),
                      ))
                    ],
                  ),
                )),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 330,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/first.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: EdgeInsets.all(18),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: const Text(
                                                  'Yash Hoodie',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 25),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: const Text(
                                                '50 \$',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              ),
                                            )),
                                            Expanded(
                                                child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.indigo,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    margin: EdgeInsets.only(
                                                        left: 10),
                                                    padding: EdgeInsets.all(3),
                                                    child: const Center(
                                                      child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: const Text(
                                                        '01',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                  Container(
                                                    padding: EdgeInsets.all(2),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 3),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    margin: EdgeInsets.only(
                                                        left: 10),
                                                    child: const Center(
                                                      child: Icon(
                                                        Icons.remove,
                                                        size: 25,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ))
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 50,
                                child: Center(
                                  child: Container(
                                    child: Icon(
                                      Icons.delete,
                                      size: 35,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                        Expanded(
                            child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 330,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/second.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: EdgeInsets.all(18),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: const Text(
                                                  'Jenil Hoodie',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 25),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: const Text(
                                                '100 \$',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              ),
                                            )),
                                            Expanded(
                                                child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.indigo,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    margin: EdgeInsets.only(
                                                        left: 10),
                                                    padding: EdgeInsets.all(3),
                                                    child: const Center(
                                                      child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: const Text(
                                                        '01',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                  Container(
                                                    padding: EdgeInsets.all(2),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 3),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    margin: EdgeInsets.only(
                                                        left: 10),
                                                    child: const Center(
                                                      child: Icon(
                                                        Icons.remove,
                                                        size: 25,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ))
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 50,
                                child: Center(
                                  child: Container(
                                    child: Icon(
                                      Icons.delete,
                                      size: 35,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                        Expanded(
                            child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 330,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/third.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: EdgeInsets.all(18),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: const Text(
                                                  'Jaddu Hoodie',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 25),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: const Text(
                                                '10 \$',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              ),
                                            )),
                                            Expanded(
                                                child: Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.indigo,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    margin: EdgeInsets.only(
                                                        left: 10),
                                                    padding: EdgeInsets.all(3),
                                                    child: const Center(
                                                      child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: const Text(
                                                        '01',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                  Container(
                                                    padding: EdgeInsets.all(2),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 3),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    margin: EdgeInsets.only(
                                                        left: 10),
                                                    child: const Center(
                                                      child: Icon(
                                                        Icons.remove,
                                                        size: 25,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ))
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 50,
                                child: Center(
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(
                                      Icons.delete,
                                      size: 35,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Sub Total : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey.shade400),
                              ),
                              const Text(
                                '\$40.895',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Shipping : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey.shade400),
                              ),
                              const Text(
                                '\$10.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: const Center(
                            child: Text(
                          "--------------------------------------------------------------------------------------------",
                          style: TextStyle(color: Colors.grey),
                        )),
                      )),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Total : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey.shade400),
                              ),
                              const Text(
                                '\$50.895',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(50)),
                    width: 350,
                    height: 100,
                    child: const Center(
                        child: Text(
                      'Checkout',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2),
                    )),
                  ),
                ),
              ))
            ],
          ),
        ))
      ],
    ));
  }
}
