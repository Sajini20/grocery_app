import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/screens/main/favourites/favourites.dart';
import 'package:grocery_app/screens/main/home/home.dart';
import 'package:grocery_app/screens/main/profile/profile.dart';
import 'package:grocery_app/screens/main/serach/search.dart';
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
//-----screens list
final List<Widget> _screens = [
  const Home(),
  const Favourites(),
  const Search(),
  const Profile(),
];




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _screens.elementAt(activeIndex), 
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
              width: 30,
              height:30,
              ),
            BottomNavTile(
              icon: AssetConstants.favicon,
              isActive: activeIndex == 1,
              onTap:() => onItemTapped(1),
              width:30,
              height:30,
              ),
            BottomNavTile(
              icon: AssetConstants.searchicon,
              isActive: activeIndex == 2,
              onTap:() => onItemTapped(2), 
              width:30,
              height:30,
              ),
              BottomNavTile(
              icon: AssetConstants.profileicon,
              isActive: activeIndex == 3,
              onTap:() => onItemTapped(3),
              width:30,
              height:30,
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
    this.width,
    this.height,
  }) : super(key: key);

  final String icon;
  final bool isActive;
  final Function() onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        width: width,
        height: height,
        // ignore: deprecated_member_use
        color: isActive ? AppColors.primaryColor : AppColors.ash,
      ),
    );
  }
}
