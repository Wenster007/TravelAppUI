enum Animities {parking, bath, mosque, wifi, gym}

class Hotel {
  String imageUrl;
  String name;
  String address;
  String detail;
  int ratings;
  int price;
  int availableRooms;
  List<Animities> animity;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.detail,
    required this.ratings,
    required this.animity,
    required this.availableRooms,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Fort Continental',
    address: '404 Great St',
    price: 175,
    detail:
        "Located near the main junction of the city with local transport facility across all parts of the city. A great and convenient place for tourists",
    ratings: 4,
    animity: [Animities.mosque, Animities.wifi, Animities.parking, Animities.bath, Animities.gym],
    availableRooms: 4,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Ambush and Co ',
    address: '404 Great St',
    price: 300,
    detail:
    "Located near the main junction of the city with local transport facility across all parts of the city. A great and convenient place for tourists",
    ratings: 5,
    animity: [Animities.mosque, Animities.wifi, Animities.parking, Animities.gym],
    availableRooms: 7,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Serena Hotel',
    address: '404 Great St',
    price: 240,
    detail:
    "Located near the main junction of the city with local transport facility across all parts of the city. A great and convenient place for tourists",
    ratings: 4,
    animity: [Animities.mosque, Animities.wifi, Animities.parking],
    availableRooms: 8,
  ),
];
