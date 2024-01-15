import 'package:flutter/material.dart';

class ListNewPlant extends StatelessWidget {
  final String title1, title2, image ;
  final int price;
  
  const ListNewPlant({super.key, required this.title1, required this.title2, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          margin: EdgeInsets.only(top: 25),
          width: 390,
          height: 70,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 211, 208, 208),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 11, top: 10),
                    //padding: EdgeInsets.only(bottom: 5),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF296E48),
                      shape: BoxShape.circle
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title1 , 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    title2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF296E48),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 140, top: 10),
                child: Text(
                  "\$$price",
                  style: TextStyle(
                    color: Color(0xFF296E48),
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ), 
        ),
        Image.asset(image,width: 85,height: 85,),
      ],
    );
  }
}