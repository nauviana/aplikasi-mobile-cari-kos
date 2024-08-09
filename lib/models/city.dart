import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';


class City {
  int id;
  String name;
  String imageUrl;
  bool isFavorite = false;//bool isPopular;

  City({required this.id,   required this.name,  required this.imageUrl, required this.isFavorite, });

}