import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  SafeArea(
      // ignore: prefer_const_constructors
      child: Center(
        // ignore: prefer_const_constructors
        child: Column(
          children: [
            const CustomText(
                            "Profile",
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                             // Specify the textAlign parameter
            ),
            const SizedBox(height: 122),
ClipRRect(
  borderRadius:BorderRadius.circular(45) ,
  child: Image.network(AssetConstants.profileurl,
  width: 200,
  height: 200,
  fit:BoxFit.cover ,
  ),
),
const SizedBox(height: 30),
const CustomText("Terry Robinson",
fontSize: 18,
),
const SizedBox(height: 8),
const CustomText("terryrobinson@gmil.com",
fontSize: 13,
color: AppColors.lightblue,
),
const SizedBox(height: 223),
CustomButton(text: "Logout", onTap:() {
  
},)

          ],
        ),
      ),
    
    );
  }
}