import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title1, title2, image ;
  final int price;
  const ItemCard({super.key, required this.title1, required this.title2, required this.image, required this.price,  });

  @override
  Widget build(BuildContext context) {
    return //Padding(
      //padding:  EdgeInsets.symmetric(horizontal: 10),
      //child: //Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //children: [
          Container(
            padding:  EdgeInsets.all(10),
            height: 200,
            width: 160,
            decoration: BoxDecoration(
              color:  Color.fromARGB(255, 96, 134, 112),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.all(35),
                  child: Image.asset(image,),
                ),
                Positioned(
                  top: 1,
                  right: 1,
                  child: Column(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        child:  Padding(
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.favorite_border_outlined,size: 20,color: Color(0xFF296E48),),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title1, 
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            title2,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(width: 25,),
                      Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text("\$$price", style: TextStyle(color: Color(0xFF296E48)),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        //],
      //),
    //);
  }
}