import 'package:carbon/screens/home_carbon_emission.dart';
import 'package:carbon/utilities/colors.dart';
import 'package:flutter/material.dart';

class CarbonEmission extends StatefulWidget {
  static String id = 'carbonEmission';
  const CarbonEmission({Key? key}) : super(key: key);

  @override
  State<CarbonEmission> createState() => _CarbonEmissionState();
}

class _CarbonEmissionState extends State<CarbonEmission> {
  TextEditingController carController = TextEditingController();
  TextEditingController bikeController = TextEditingController();
  TextEditingController busController = TextEditingController();
  TextEditingController taxiController = TextEditingController();
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          image: DecorationImage(
            image: AssetImage("assests/images/earth.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.chevron_left,
                        size: 35,
                      ),
                    ),
                    Text(
                      "Carbon Test",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_rounded),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Commute",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "🚗",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How many miles do you travel by car daily?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: carController,
                        onChanged: (value) {
                          setState(() {
                            carController.text = value.toString();
                          });
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          focusColor: Colors.white,
                          fillColor: AppColors.backgroundColor,
                          prefix: Text(
                            "🚗 ",
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How many miles do you travel by bike daily?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: bikeController,
                        onChanged: (value) {
                          setState(() {
                            carController.text = value.toString();
                          });
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          focusColor: Colors.white,
                          fillColor: AppColors.backgroundColor,
                          prefix: Text(
                            "🏍️ ",
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How many miles do you travel by Bus daily?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: busController,
                        onChanged: (value) {
                          setState(() {
                            carController.text = value.toString();
                          });
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          focusColor: Colors.white,
                          fillColor: AppColors.backgroundColor,
                          prefix: Text(
                            "🚌 ",
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How many miles do you travel by cab daily?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: taxiController,
                        cursorColor: AppColors.primaryColor,
                        onChanged: (value) {
                          setState(() {
                            carController.text = value.toString();
                          });
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          focusColor: Colors.white,
                          fillColor: AppColors.backgroundColor,
                          prefix: Text(
                            "🚕 ",
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: TextButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, HomeEmission.id);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 20,
                      ),
                      shadowColor: AppColors.blackshade1,
                    ),
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteshade,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
