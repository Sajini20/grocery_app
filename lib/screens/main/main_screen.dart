import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/screens/main/home/home.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //-- store the active index
  int activeIndex = 0;

  //--trigger when bottomnav bar item clicked


  void onItemTapped(int val){
     setState(() {
                  activeIndex = val;
                });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  const Home(), 
      bottomNavigationBar: SizedBox(
        height:83,
       // color:AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavTile(
              icon: AssetConstants.homeicon,
              isActive: activeIndex == 0,
              onTap:() => onItemTapped(0),
              ),
            BottomNavTile(
              icon: AssetConstants.favicon,
              isActive: activeIndex == 1,
              onTap:() => onItemTapped(1),
              ),
            BottomNavTile(
              icon: AssetConstants.searchicon,
              isActive: activeIndex == 2,
              onTap:() => onItemTapped(3), 
              ),
              BottomNavTile(
              icon: AssetConstants.profileicon,
              isActive: activeIndex == 3,
              onTap:() {
                activeIndex = 3;
              }, 
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