import 'package:flutter/material.dart';

class BusDetails extends StatelessWidget {
  const BusDetails({Key? key}) : super(key: key);

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
                  Color.fromARGB(255, 280, 171, 220),
                  Color.fromARGB(255, 143, 118, 198),
                  Color.fromARGB(255, 92, 52, 156),
                  Color.fromARGB(255, 91, 19, 170),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Row(
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "LOCATION 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.swap_horiz_outlined,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  "LOCATION 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270, left: 20, right: 20),
            child: Column(
              children:const [
                BusDetailsTime(traveltime: '30Min',
                  price: '150', departure: '15Min',),
                SizedBox(
                  height: 60,
                ),
                BusDetailsTime(traveltime: '40Min',
                  price: '250', departure: '25Min',),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 240,
              left: 50,
            ),
              child: Column(
                children: [
                  BusIcon(),
                  SizedBox(
                    height: 200,
                  ),
                  BusIcon(),

                ],
              )

          ),

        ],
      ),
    );
  }
}
class BusIcon extends StatelessWidget {
  const  BusIcon ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
            radius: 30,
            backgroundColor: Colors.deepPurple[400],
            child: const Icon(
                Icons.directions_bus_filled,
                size:30,
              color:Colors.white,
            ),

          );
  }
}

class BusDetailsTime extends StatelessWidget {

  const BusDetailsTime(
  {Key? key,
  required this.traveltime,
  required this.departure,
  required this.price,
  }) : super(key: key);

final String traveltime;
final String departure;
final String price;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(5, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location 1',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                ),
              ),
              Text(
                'Date',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Location 2',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                ),
              ),
              Text(
                'Date',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.bus_alert_rounded,
            size: 40,
            color: Colors.deepPurple,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Travel Time:",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight:FontWeight.w500,
                    ),
                  ),
                  Text(
                    traveltime,
                    style: TextStyle(
                      color: Colors.deepPurple[380],
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Departure On",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight:FontWeight.w500,
                    ),
                  ),
                  Text(
                    departure,
                    style: TextStyle(
                      color: Colors.deepPurple[380],
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Price:",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight:FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\$"+price,
                    style: TextStyle(
                      color: Colors.deepPurple[380],
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BusDetails(),
  ));
}
