import 'package:flutter/material.dart';
import 'package:travelapp/models/hotel_model.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    String buildRatingStar(int index) {
      String result = "";
      for (int i = 0; i < index; i++) {
        result += "⭐ ";
      }

      result.trim();

      return result;
    }

    Widget buildIcon(Animities anmity) {
      Map<String, Icon> iconsMap = {
        "mosque": Icon(Icons.mosque, color: Colors.grey[700],),
        "wifi": Icon(Icons.wifi, color: Colors.grey[700],),
        "parking": Icon(Icons.local_parking, color: Colors.grey[700],),
        "bath": Icon(Icons.shower, color: Colors.grey[700],),
        "gym": Icon(Icons.sports_gymnastics, color: Colors.grey[700],),
      };

      return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 0.2, offset: Offset(0, 2), spreadRadius: 0.1),
          ],
        ),
        child: iconsMap[anmity.name],
        // child: ,
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width - 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ]),
                child: Hero(
                  tag: hotel.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(hotel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.keyboard_backspace_rounded,
                        size: 30,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //---------------------======================----------------------------

          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 40, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.name,
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        hotel.address,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 18,
                            color: Colors.red,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Show in map",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    hotel.detail,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18,
                            ),
                          ),
                          Text("\$${hotel.price}"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Reviews",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18,
                            ),
                          ),
                          Text(buildRatingStar(hotel.ratings)),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Available Rooms",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18,
                            ),
                          ),
                          Text("${hotel.availableRooms}"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Aminities",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: hotel.animity
                        .asMap()
                        .entries
                        .map((e) => buildIcon(e.value))
                        .toList(),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      // color: Colors.orange,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal: 70, vertical: 15),
                                ),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 17, 159, 236))),
                            child: const Text("Book Now",
                                style: TextStyle(fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
