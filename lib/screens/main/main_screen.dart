import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(child: CustomText("Home")),
      bottomNavigationBar: SizedBox(
        height:83,
       // color:AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavTile(
              icon: AssetConstants.homeicon,
              isActive: true,
              onTap:() {}, 
              ),
            BottomNavTile(
              icon: AssetConstants.favicon,
              isActive: false,
              onTap:() {}, 
              ),
            BottomNavTile(
              icon: AssetConstants.searchicon,
              isActive: false,
              onTap:() {}, 
              ),
              BottomNavTile(
              icon: AssetConstants.profileicon,
              isActive: false,
              onTap:() {}, 
              ),
          ],
        ),
      ),

    );
  }
}

class BottomNavTile extends StatelessWidget {
  const BottomNavTile({
    Key? key,
    required this.icon,
    required this.isActive,
    required this.onTap,
  }):super(key: key);
final String icon;
final bool isActive;
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // ignore: deprecated_member_use
      child: SvgPicture.asset(
        icon,
        // ignore: deprecated_member_use
        color:isActive?AppColors.primaryColor:AppColors.ash ,
        ));
  }
}