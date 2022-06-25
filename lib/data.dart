import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;

  NavigationItem(this.iconData);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.notifications),
    NavigationItem(Icons.person),
  ];
}

class Place {

  String description;
  String country;
  double price;
  List<String> images;
  bool favorite;

  Place(this.description, this.country, this.price, this.images, this.favorite);

}

List<Place> getPlaceList(){
  return <Place>[
    Place(
      "Tempat terbaik untuk Healing, UBUD!!",
      "Ubud, Bali",
      300,
      [
        "assets/images/kuta-bali-1.jpg",
        "assets/images/kuta-bali-2.jpg",
        "assets/images/kuta-bali-3.jpg",
        "assets/images/kuta-bali-4.jpg",
      ],
      false
    ),
    Place(
      "Dari Sabang sampai merauke, ini yang paling keren",
      "Lombok",
      299,
      [
        "assets/images/rio_0.jpg",
        "assets/images/rio_1.jpg",
        "assets/images/rio_2.jpg",
        "assets/images/rio_3.jpg",
      ],
      false
    ),
    Place(
      "Kota indah penuh dengan suasana asri",
      "Bekasi",
      480,
      [
        "assets/images/new_york_0.jpg",
        "assets/images/new_york_1.jpg",
        "assets/images/new_york_2.jpg",
        "assets/images/new_york_3.jpg",
      ],
      false
    ),
    Place(
      "Memang maniss",
      "Manado",
      712,
      [
        "assets/images/sidney_0.jpg",
        "assets/images/sidney_1.jpg",
      ],
      false
    ),
    Place(
      "jogja jogja jogja istimewa",
      "Jogja",
      600,
      [
        "assets/images/temple_0.jpg",
        "assets/images/temple_1.jpg",
        "assets/images/temple_2.jpg",
      ],
      false
    ),
    Place(
      "Bandung bukan hanya letak geografis melainkan tiris",
      "Bandung",
      200,
      [
        "assets/images/cabins_0.jpg",
        "assets/images/cabins_1.jpg",
        "assets/images/cabins_2.jpg",
        "assets/images/cabins_3.jpg",
      ],
      false
    ),
  ];
}

class Destination {

  String city;
  
  String iconUrl;
  Color iconColor;

  Destination(this.city, this.iconUrl, this.iconColor);
}

List<Destination> getDestinationList(){
  return <Destination>[
    Destination(
      "Mountain",
      "assets/icons/destination-mountain.png",
      const Color(0xFF18A2EF),
    ),
    Destination(
      "Beach",
      "assets/icons/destination-beach.png",
      const Color(0xFFFF5A5F),
    ),
    Destination(
      "Villa's",
      "assets/icons/destination-villa.png",
      const Color(0xFF2FC069),
    ),
    Destination(
      "Hotel",
      "assets/icons/destination-hotel.png",
      const Color(0xFFFF8412),
    ),
  ];
}

class Featured {

  String year;
  String title;
  String imageUrl;

  Featured(this.year, this.title, this.imageUrl);

}

List<Featured> getFeaturedList(){
  return <Featured>[
    Featured(
      "2019",
      "Top 5 Beaches",
      "assets/images/beach.jpg",
    ),
    Featured(
      "2019",
      "Best Nightlife Cities",
      "assets/images/city.jpg",
    ),
    Featured(
      "2018",
      "Top 10 Destinations",
      "assets/images/destination.jpg",
    ),
  ];
}

class DataNotif {
  String title;
  String categoryPromo;
  String content;

  DataNotif(this.title, this.categoryPromo, this.content);
}
List<DataNotif> getListNotifikasi(){
  return <DataNotif>[
    DataNotif(
      "Pesanan mu sedang di proses",
      "Checkout",
      "pesanan kamu sedang diproses oleh pihak penyedia jasa",
    ),
    DataNotif(
      "Pembayaran mu sudah terverifikasi",
      "Verification",
      "akhirnyaa pembayaran mu sudah terverifikasi!!!!",
    ),
    DataNotif(
      "Hot sale, liburan bareng pasangan ke Labuan Bajo!",
      "Promo",
      "Ya iyalah bikin kalap! Tapi tenang, soalnya bisa hemat sampai 50%",
    ),
  ];
}