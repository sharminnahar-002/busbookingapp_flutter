import 'package:flutter/material.dart';

import 'bus_details.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(200, 100, 130, 163),
                  Color.fromARGB(255, 143, 118, 198),
                  Color.fromARGB(255, 92, 52, 156),
                  Color.fromARGB(255, 91, 19, 170),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Hi, Sara",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "BUS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210, left: 20, right: 20),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  )
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                      Text(  //dropdownButton Use...
                        'Location 1',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                      height: 20,
                        ),
                      Text(
                        'To',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                      Text( //dropdownButton Use...
                        'Location 2',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Icon(     //swap value change
                    Icons.swap_vert_circle_rounded,
                    color: Colors.deepPurple,
                    size: 60,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 460, left: 20, right: 20),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  )
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children:const [
                            Text(
                              'PASSENGER',
                              style: TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'TYPE',
                              style: TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children:[

                        IconButton(
                          onPressed: () => setState(() {
                            if (_itemCount > 0) {
                              _itemCount--;
                            }
                          }),
                          icon: const Icon(
                            Icons.remove,
                          ),
                        ),
                        Text(
                          _itemCount.toString(),
                          style: const TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 25,
                          ),
                        ),
                            IconButton(
                              onPressed: () => setState(() {
                                _itemCount++;
                              }),
                              icon: const Icon(Icons.add),
                            ),
                      ],
                    ),

                        Text(
                          'Type',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 25,
                          ),
                        )
                      ],
                        ),
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 20,

                        ),
                      child: Column(
                        children: const [
                          Text(
                            'DEPART',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '2 MARCH 2023',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    )
                ],
               ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 650),
          child: Center(
            child: Container(
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255,108, 51, 222),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                 MaterialPageRoute(
                     builder:(context)=> const BusDetails(),
                 ),
                  );
                },
                child: const Text(
                    'SEARCH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                ),
              ),
            ),
          ),)
      ],
        ),
    );
  }
}
