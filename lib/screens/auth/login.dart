import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/screens/auth/forgot_password.dart';
import 'package:grocery_app/screens/main/main_screen.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/constants/assets_constants.dart';
import 'package:grocery_app/utils/util_functions.dart';

class Login extends StatefulWidget {
  const Login({super. key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  "Login",
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
                      child: InkWell(
                        onTap:() =>UtilFunctions.navigateTo(context, const ForgotPassword()) ,
                        child: const CustomText("Forgot Your Password ? ",
                          fontSize:14,
                          fontWeight: FontWeight.w400,
                          
                          ),
                      ),
                    ),
                    const SizedBox(height: 24),
                     CustomButton(
                      text: "Login",
                      onTap: () {
                        UtilFunctions.navigateTo(context,const MainScreen());
                        
                      },
                     ),
                     const SizedBox(height: 23),
                     const CustomText(
                      "Or login with social account",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                     ),
                     const SizedBox(height: 12),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         FlutterSocialButton(onTap:() {},
                         buttonType: ButtonType.google,
                         mini: true,
                         ),
                         const SizedBox(width: 16),
                         FlutterSocialButton(onTap:() {},
                         buttonType: ButtonType.facebook,
                         mini: true,
                         ),
                       ],
                     )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
