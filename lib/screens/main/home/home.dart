import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/screens/main/home/widgets/product_grid.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  AssetConstants.menuicon,
                  width: 30,
                  height: 30,
                  
                  ),
                SvgPicture.asset(
                  AssetConstants.carticon,
                  width: 30,
                  height: 30,
                  ),
              ],
            ),
            const SizedBox(height: 25),
               const Align(
                alignment: Alignment.centerLeft,
                 child:  CustomText(
                    "Vegetables",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                    textAlign: TextAlign.center, // Specify the textAlign parameter
                  ),
               ),
          const SizedBox(height: 41),
          const ProductGrid()




          ],
        ),
      ),
    
    );
  }
}

