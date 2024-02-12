import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart'; // Make sure this import is correct
import 'package:grocery_app/screens/auth/signup.dart';
// Add this import
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SignUp()),
);

});
     

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
              child: Image.asset(
                AssetConstants.logo,
                width: 331,
                height: 225,
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            FadeInUp(
              child: const CustomText(
                "Shop Your Daily\n Necessary",
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
