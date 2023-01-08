import 'package:carbon/screens/home_carbon_emission.dart';
import 'package:carbon/screens/results.dart';
import 'package:carbon/utilities/carbon_finder.dart';
import 'package:carbon/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FoodEmission extends StatefulWidget {
  static String id = "foodEmission";
  double carbonEmissionByTravel;
  double carbonEmissionByHouse;
  FoodEmission(
      {Key? key,
      required this.carbonEmissionByTravel,
      required this.carbonEmissionByHouse})
      : super(key: key);

  @override
  State<FoodEmission> createState() => _FoodEmissionState();
}

class _FoodEmissionState extends State<FoodEmission> {
  TextEditingController meatController = TextEditingController();
  TextEditingController grainsController = TextEditingController();
  TextEditingController dairyController = TextEditingController();
  TextEditingController fruitsController = TextEditingController();
  String text = "";
  double carbonEmissionByFood = 0;
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
                      "Food",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "🍴",
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
                        "How much meat, Fish and Eggs do you consume?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: meatController,
                        onChanged: (value) {
                          setState(() {
                            meatController.text = value.toString();
                            meatController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: meatController.text.length));
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
                            "🍗 ",
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
                        "How much grains, Baked goods do you consume?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: grainsController,
                        onChanged: (value) {
                          setState(() {
                            grainsController.text = value.toString();
                            grainsController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: grainsController.text.length));
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
                            "🌾 ",
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
                        "How much Dairy products do you consume?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: dairyController,
                        onChanged: (value) {
                          setState(() {
                            dairyController.text = value.toString();
                            dairyController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: dairyController.text.length));
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
                            "🥛 ",
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
                        "How much Fruits and Vegetables do you consume?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      TextFormField(
                        controller: fruitsController,
                        cursorColor: AppColors.primaryColor,
                        onChanged: (value) {
                          setState(() {
                            fruitsController.text = value.toString();
                            fruitsController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: fruitsController.text.length));
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
                            "🍇 ",
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
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
                            carbonEmissionByFood =
                                CarbonFootPrint.getDailyFoodCarbonFootPrint(
                                    double.parse(meatController.text),
                                    double.parse(grainsController.text),
                                    double.parse(dairyController.text),
                                    double.parse(fruitsController.text));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Results(
                                  carbonEmissionByTravel:
                                      widget.carbonEmissionByTravel,
                                  carbonEmissionByHouse:
                                      widget.carbonEmissionByHouse,
                                  carbonEmissionByFood: carbonEmissionByFood,
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
                            "Submit",
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
