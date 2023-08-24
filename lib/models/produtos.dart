import 'package:flutter/material.dart';

class Produto {
  final String id;
  final List<String> categories;
  final String title;
  final double cost;
  final String imageUrl;
  final int duration;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Produto({
    required this.id,
    required this.categories,
    required this.title,
    required this.cost,
    required this.imageUrl,
    required this.duration,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
  });
}
