import 'package:flutter/material.dart';

class Percentage {
  final String categories;
  final int percent, price;

  const Percentage({
    required this.categories,
    required this.percent,
    required this.price,
  });
}

final percentageList = [
  const Percentage(categories: "Restaurants", percent: 49, price: 1352),
  const Percentage(categories: "Taxi", percent: 25, price: 452),
  const Percentage(categories: "Media", percent: 18, price: 212),
  const Percentage(categories: "Fast Food", percent: 8, price: 1200),
];
