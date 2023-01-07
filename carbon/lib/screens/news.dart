import 'package:carbon/screens/home_screen.dart';
import 'package:carbon/utilities/colors.dart';
import 'package:carbon/widgets/bottom_nav.dart';
import 'package:carbon/widgets/news_article.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  static String id = "newsScreen";
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, HomeScreen.id);
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      size: 35,
                    ),
                  ),
                  Text(
                    "Carbon Education",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_rounded),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 6),
                            blurRadius: 13.0,
                            color: Colors.black12.withOpacity(0.3),
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1642158865163-e591f08e9d20?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWElMjBqdW5nbGVzfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.blackshade1,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 135,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.whiteshade,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2.70t",
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "CO2",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Current Level",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 135,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.whiteshade,
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "5%",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rate",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "📈",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.whiteshade,
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Text(
                  "At present Automobiles contribute whooping 56% to the whole carbon generated",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Text(
                  "Latest News",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(
                  color: AppColors.highlightColor,
                  thickness: 2,
                ),
              ),
              NewsArticle(),
              NewsArticle(),
              NewsArticle(),
              NewsArticle(),
              NewsArticle(),
              NewsArticle(),
              NewsArticle(),
            ],
          ),
        ),
      ),
      floatingActionButton: BottomNav(),
    );
  }
}
