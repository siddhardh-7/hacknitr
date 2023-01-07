import 'package:carbon/screens/home_screen.dart';
import 'package:carbon/screens/news.dart';
import 'package:carbon/utilities/colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteshade,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackshade2,
            offset: Offset(0, 5),
            blurRadius: 12,
            spreadRadius: -6,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
            child: Text(
              "🏡",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, NewsScreen.id);
            },
            child: Text(
              "🍀",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "🧔",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
