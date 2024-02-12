import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/screens/auth/login.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super. key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  "SignUp",
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
                const SizedBox(height: 20),
                const CustomTextField(
                  hintText:"Name" ,
                  ),
                  const SizedBox(height: 8),
                  const CustomTextField(
                    hintText: "Email",
                    ),
                    const SizedBox(height: 8),
                    const CustomTextField(
                      hintText:"Password",
                      isObscure: true,
                      ),
                    const SizedBox(height: 16),
                    Align(
                      alignment:Alignment.centerRight ,
                      child:InkWell(
                        onTap: () =>Navigator.push(context,MaterialPageRoute(builder: (context) => const Login())),
                      
                      child: const CustomText("Already Have an Account ? ",
                        fontSize:14,
                        fontWeight: FontWeight.w400,
                        ),
                        ),
                    ),
                    const SizedBox(height: 24),
                    CustomButton(text: "SignUp", onTap:() {
                      
                    },)
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}
