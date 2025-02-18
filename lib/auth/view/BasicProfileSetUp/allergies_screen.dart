import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/auth/view/BasicProfileSetUp/constwidget/questions_box.dart';
import 'package:my_app/auth/view/BasicProfileSetUp/food_you_hate_screen.dart';
import 'package:my_app/home/view/bootmNav/bottm_nav.dart';





class AllergiesScreen extends StatefulWidget {
  const AllergiesScreen({super.key});
  

  @override
  
  State<AllergiesScreen> createState() => _AllergiesScreenState();
}

class _AllergiesScreenState extends State<AllergiesScreen> {
   int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(fit: StackFit.expand, children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Image.asset(
            "assets/setup/background setup.png",
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,bottom: 35),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 23,
                      ),
                    ),
                    Text(
                      "Step 6 of 8",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.4),
                    ),
                    GestureDetector(
                          onTap: () {
                         Get.to(const BottmNav());
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.4),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                FittedBox(
                  child: Text(
                    "Do you have any\n allergies ?",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 33),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Text(
                    "Start your fitness journey with our \napp's guidance and support.",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Flexible(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                QuestionsOptionsbox(text: 'Yes', status: selectedIndex==0,onTap: (){
                  setState(() {
                    selectedIndex=0;
                  });
                },),
                const Flexible(child: SizedBox(height: 21,)),
                    QuestionsOptionsbox(text: 'No', status: selectedIndex==1,onTap: (){
                      setState(() {
                        selectedIndex=1;
                      });
                    },),
                
                  const Flexible(child: SizedBox(height: 328,)),
                const Spacer(flex: 5,),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const FoodYouHateScreen()));
                  },
                  child: Container(
                    height: 56,
                    width: 327,
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(31, 108, 105, 105)),
                    child: Center(
                        child: Text(
                      "Next",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    )),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}