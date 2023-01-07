import 'package:carbon/utilities/colors.dart';
import 'package:carbon/widgets/bottom_nav.dart';
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
      body: Container(),
      floatingActionButton: BottomNav(),
    );
  }
}
