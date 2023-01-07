import 'package:flutter/material.dart';

class NewsArticle extends StatelessWidget {
  const NewsArticle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              "https://images.unsplash.com/photo-1571987937747-b9d1aee3371d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNvMnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
              fit: BoxFit.fill,
              height: 90.0,
              width: 90.0,
            ),
          ),
          Container(
            width: 180,
            height: 90,
            margin: EdgeInsets.only(left: 12),
            child: Text(
              "At present Automobiles contribute whooping 56% to the whole carbon generated",
              style: TextStyle(
                fontSize: 15,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
