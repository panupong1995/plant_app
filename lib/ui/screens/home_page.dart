import 'package:first_test/constants.dart';
import 'package:first_test/models/plants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    List<Plant> _plantList = Plant.plantList;

    //Plants catrgory
    List<String> _plantTypes = [
      'Reommended'
      'Indoor'
      'Outdoor'
      'Garden'
      'Supplement'
    ];

    //Toggle Favorite button
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    width: size.width * 0.9,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search, color: Colors.black54.withOpacity(.6),),
                        const Expanded(
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                              hintText: 'Searh Plant',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.mic, color: Colors.black54.withOpacity(.6),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Constants.primaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //padding: const EdgeInsets.symmetric(horizontal: 12.0),
              color: Colors.red,
              height: 50,
              width: size.width,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 30,),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _plantTypes.length,
                itemBuilder: (BuildContext context, int index) {
                  return //Padding(
                    //padding: const EdgeInsets.all(8.0),
                    //child: 
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Text(
                        _plantTypes[index],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.w300,
                          color: selectedIndex == index ? Constants.primaryColor : Constants.blackColor,
                        ),
                      ),
                    );
                  //);
                }
              ),
            ),
            SizedBox(
              height: size.height * .3,
              child: ListView.builder(
                itemCount: _plantList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 200,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          right: 20,
                          child: Container(
                            height: 50,
                            width: 50,
                            child: IconButton(
                              onPressed: null, 
                              icon: Icon(_plantList[index].isFavorated == true ? Icons.favorite : Icons.favorite_border),
                              color: Constants.primaryColor,
                              iconSize: 30.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          right: 50,
                          top: 50,
                          bottom: 50,
                          child: Image.asset(_plantList[index].imageURL),
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}