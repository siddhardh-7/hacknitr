import 'package:carbon/screens/carbon_emission.dart';
import 'package:carbon/screens/food_carbon_emission.dart';
import 'package:carbon/screens/results.dart';
import 'package:carbon/utilities/carbon_finder.dart';
import 'package:carbon/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeEmission extends StatefulWidget {
  static String id = "HomeEmission";
  double carbonEmissionByTravel;
  HomeEmission({Key? key, required this.carbonEmissionByTravel})
      : super(key: key);

  @override
  State<HomeEmission> createState() => _HomeEmissionState();
}

class _HomeEmissionState extends State<HomeEmission> {
  TextEditingController fanController = TextEditingController();
  TextEditingController tvController = TextEditingController();
  TextEditingController fridgeController = TextEditingController();
  TextEditingController waterController = TextEditingController();
  String text = "";
  double carbonEmissionByHouse = 0;
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
                      "Household",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "🏠",
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
                        "How many hours do you use Fans daily?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: fanController,
                        onChanged: (value) {
                          setState(() {
                            fanController.text = value.toString();
                            fanController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: fanController.text.length));
                          });
                        },
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
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
                            "🍃 ",
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
                        "How many hours do you use Television daily?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: tvController,
                        onChanged: (value) {
                          setState(() {
                            tvController.text = value.toString();
                            tvController.selection = TextSelection.fromPosition(
                                TextPosition(offset: tvController.text.length));
                          });
                        },
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
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
                            "📺 ",
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
                        "How many hours do you use Fridge daily?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: fridgeController,
                        onChanged: (value) {
                          setState(() {
                            fridgeController.text = value.toString();
                            fridgeController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: fridgeController.text.length));
                          });
                        },
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
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
                            "🧊 ",
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
                        "How many miles do you use water daily?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: waterController,
                        cursorColor: AppColors.primaryColor,
                        onChanged: (value) {
                          setState(() {
                            waterController.text = value.toString();
                            waterController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: waterController.text.length));
                          });
                        },
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
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
                            "🚿 ",
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(
                                context, CarbonEmission.id);
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
                            "Previous",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.whiteshade,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            carbonEmissionByHouse = CarbonFootPrint
                                .getDailyHouseHoldCarbonFootPrint(
                                    double.parse(fanController.text),
                                    double.parse(tvController.text),
                                    double.parse(fridgeController.text),
                                    double.parse(waterController.text));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FoodEmission(
                                  carbonEmissionByTravel:
                                      widget.carbonEmissionByTravel,
                                  carbonEmissionByHouse: carbonEmissionByHouse,
                                ),
                              ),
                            );
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
