import 'package:first_test/components/Item_card.dart';
import 'package:first_test/components/categories.dart';
import 'package:first_test/components/home_app_bar.dart';
import 'package:first_test/components/list_new_plant.dart';
import 'package:first_test/demodata.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          //physics: BouncingScrollPhysics(),
          //physics: AlwaysScrollableScrollPhysics(),
          //physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 208, 208),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            onSaved: (Text) {},
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "search any plant here",
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.mic)
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF296E48),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.filter_alt_rounded,color: Colors.white,size: 30,),
                    ),
                  ),
                ],
              ),
              CategoriesState(),
              SizedBox(height: 10,),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 220,
                width: double.infinity,
                //width: MediaQuery.of(context).size.width,
                child:  ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 15,),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: demoplanttypecard.length,
                  itemBuilder: (context, index) {
                    return //Text("best");
                      ItemCard(
                        title1: demoplanttypecard[index]['title1'], 
                        title2: demoplanttypecard[index]['title2'], 
                        image: demoplanttypecard[index]['images'], 
                        price: demoplanttypecard[index]['price']
                        );
                  }
                ),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "New Plant",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 5,),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: demoplanttypecard.length,
                  itemBuilder: (context, index) {
                    return ListNewPlant(
                      title1: demoplanttypecard[index]['title1'], 
                      title2: demoplanttypecard[index]['title2'], 
                      image: demoplanttypecard[index]['images'], 
                      price: demoplanttypecard[index]['price']
                    );
                  },
                  //child: ListNewPlant()
                ),
              ),
              SizedBox(height: 100,)
  
            ]
          ),
        ),
      ),
    );
  }
}