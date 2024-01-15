import 'package:first_test/demodata.dart';
import 'package:flutter/material.dart';

class CategoriesState extends StatefulWidget {
  const CategoriesState({super.key});

  @override
  State<CategoriesState> createState() => _CategoriesStateState();
}

class _CategoriesStateState extends State<CategoriesState> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: plantTypes.length,
          itemBuilder: (context, index) => buildCategory(index)
        ),
      ),
    );
  }
  Widget buildCategory (int index) {
  return GestureDetector(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plantTypes[index],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Color(0xFF296E48) : Color(0xFFACACAC),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}

