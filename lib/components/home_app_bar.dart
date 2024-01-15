import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: const Column(
        children: [
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ),
              ),
              Icon(
                Icons.notifications_rounded,
                color: Color.fromARGB(255, 146, 151, 153),
              ),
            ],
          ),
        ],
      ),
    );
  }
}