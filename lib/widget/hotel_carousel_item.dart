import 'package:flutter/material.dart';
import 'package:travelapp/models/hotel_model.dart';

class HotelCarouselItem extends StatelessWidget {
  const HotelCarouselItem({Key? key, required this.hotel}) : super(key: key);

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 280,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 10,
            child: Container(
              height: 120,
              width: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 5, top: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      hotel.name,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      hotel.address,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text("\$${hotel.price} / night"),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Hero(
              tag: hotel.imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  height: 180,
                  width: 260,
                  image: AssetImage(hotel.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
