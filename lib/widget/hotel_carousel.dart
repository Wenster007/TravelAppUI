import 'package:flutter/material.dart';
import 'package:travelapp/models/hotel_model.dart';
import 'package:travelapp/screens/hotel_screen.dart';
import 'package:travelapp/widget/hotel_carousel_item.dart';

class HotelCarousel extends StatelessWidget {
  const HotelCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Top Hotels",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {}, //see all click functionality.
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (ctx, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HotelScreen(hotel: hotels[index]),));
                },
                child: HotelCarouselItem(
                  hotel: hotels[index],
                )),
          ),
        ),
      ],
    );
  }
}
