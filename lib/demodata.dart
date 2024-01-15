import 'package:flutter/material.dart';

List<String> plantTypes = [
      'Recommended',
      'Indoor',
      'Outdoor',
      'Garden',
      'Supplement',
    ];
class Product {
  final String image, title1, title2, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title1,
    required this.title2,
    required this.price,
    required this.description,
    required this.size,
    required this.color
  });
}

List <Product> products = [
  Product(
    id: 1, 
    image: "asset/images/plant-one.png", 
    title1: "indoor",
    title2: "Sanseviera", 
    price: 22, 
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley.", 
    size: 12, 
    color: Color(0xFF3D82AE)),
  Product(
    id: 2, 
    image: "asset/images/plant-two.png", 
    title1: "indoor",
    title2: "Sanseviera", 
    price: 234, 
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley.", 
    size: 8, 
    color: Color(0xFFD3A984)),
  Product(id: 3, 
    image: "asset/images/plant-three.png", 
    title1: "indoor",
    title2: "Sanseviera", 
    price: 234, 
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley.", 
    size: 10, 
    color: Color(0xFF989493)),
  Product(id: 4, 
    image: "asset/images/plant-four.png", 
    title1: "indoor",
    title2: "Sanseviera", 
    price: 234, 
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley.", 
    size: 11, 
    color: Color(0xFFe6B398)),
  Product(id: 5, 
    image: "asset/images/plant-five.png", 
    title1: "indoor",
    title2: "Sanseviera", 
    price: 234, 
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley.", 
    size: 12, 
    color: Color(0xFFFB7883)),
  Product(id: 6, 
    image: "asset/images/plant-six.png", 
    title1: "indoor",
    title2: "Sanseviera", 
    price: 234, 
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley.", 
    size: 12, 
    color: Color(0xFFAEAEAE)),

];

List<Map<String, dynamic>> demoplanttypecard = [
  {
    "title1": "Indoor",
    "title2": "Sanseviera",
    "images": "assets/images/plant-one.png",
    "price": 22,
  },
  {
    "title1": "Indoor",
    "title2": "Sanseviera",
    "images": "assets/images/plant-two.png",
    "price": 27,
  },
  {
    "title1": "Indoor",
    "title2": "Sanseviera",
    "images": "assets/images/plant-three.png",
    "price": 25,
  },
  {
    "title1": "Indoor",
    "title2": "Sanseviera",
    "images": "assets/images/plant-four.png",
    "price": 34,
  },
  {
    "title1": "Indoor",
    "title2": "Sanseviera",
    "images": "assets/images/plant-five.png",
    "price": 36,
  },
  {
    "title1": "Indoor",
    "title2": "Sanseviera",
    "images": "assets/images/plant-six.png",
    "price": 42,
  },
];