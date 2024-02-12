import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super. key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16 ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                const CustomText(
                  "Forgot Password",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                  textAlign: TextAlign.center, // Specify the textAlign parameter
                ),
                const SizedBox(height: 41),
                Image.asset(
                  AssetConstants.logo,
                  width: 202,
                  height: 138,
            
                ),
                const SizedBox(height: 100), 
                const CustomText("Please,enter your email address.You will receive a Link to create a new password via email.",
                fontSize: 14,
                
                
                ),           
                const SizedBox(height: 16),
                    const CustomTextField(
                      hintText:"Password",
                      isObscure: true,
                      ),
                    const SizedBox(height: 53),
                    
                     CustomButton(
                      text: "Send",
                      onTap: () {},
                     ),
                     const SizedBox(height: 23),
                     ],
            ),
          ),
        ),
      ),
    );
  }
}
