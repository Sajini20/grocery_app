import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount:10 ,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        mainAxisSpacing: 44,
        crossAxisSpacing: 19,
      ), 
      itemBuilder: (context,index){
      return const ProductTile();
      },),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       color: AppColors.primaryColor,
       borderRadius: BorderRadius.circular(12),
       image: const DecorationImage(image:NetworkImage(AssetConstants.dummyImage),
       fit: BoxFit.cover,
       
       ),
      ) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8,right: 8),
            padding: const EdgeInsets.all(8),
            decoration:const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ) ,
            child: SvgPicture.asset(AssetConstants.favicon,
            width: 20,
            ),
            
            
            ),
            Container(
              height: 38,
              padding:const EdgeInsets.symmetric(horizontal:9 ) ,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(12),
                ),
              // ignore: prefer_const_constructors
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: const [
                  CustomText(
                    "Tomato",
                    fontSize: 15,
                    color: AppColors.white,
                    
                    ),
                      CustomText(
                    "\$1.50",
                    fontSize: 15,
                    
                    
                    ),
                    
                ],
              ) ,
            )
        ],
      ),
    );
  }
}