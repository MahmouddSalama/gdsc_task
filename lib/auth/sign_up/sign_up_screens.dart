import 'package:flutter/material.dart';
import 'package:gdsc_task/auth/login/login_screen.dart';
import 'package:gdsc_task/screens/home_screen/home_sccreen.dart';
import 'package:gdsc_task/widgets/componants/goto/go_to.dart';
import 'package:gdsc_task/widgets/componants/text_field/default_text_field.dart';
import 'package:gdsc_task/widgets/componants/togel_text/togel_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  bool isPass = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(.6),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.fill,
              width: 1080,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create account',
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 20),
                    DefaultTextField(
                      hintText: 'Name',
                      prefuxIcon: Icons.person_sharp,
                    ),
                    DefaultTextField(
                      prefuxIcon: Icons.lock,
                      isPass: isPass,
                      hintText: 'password',
                      suffux: IconButton(
                        onPressed: () {
                          setState(() {
                            isPass = !isPass;
                          });
                        },
                        icon: Icon(
                          isPass ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    DefaultTextField(
                      hintText: 'Email',
                      prefuxIcon: Icons.email,
                    ),
                    DefaultTextField(
                      hintText: 'mobile',
                      prefuxIcon: Icons.mobile_screen_share,
                    ),
                    Align(
                      alignment: Alignment(1, 0),
                      child: TogelText(
                        qustion: 'I have an Account ?',
                        operation: 'Login',
                        function: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    GoTo(
                      text: 'Create',
                      function: () {
                        Navigator.pushReplacement(context,   MaterialPageRoute(
                          builder: (context)=>HomeScreen(),
                        ));
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Or create account using social media',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildContainer(iconsData: FontAwesomeIcons.facebookF),
                        SizedBox(width: 10,),
                        buildContainer(iconsData: FontAwesomeIcons.twitter),
                        SizedBox(width: 10,),
                        buildContainer(iconsData: FontAwesomeIcons.google),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer({iconsData}) {
    return Container(
      height: 50,
      width: 50,
      child: Icon(
        iconsData,
        color: Colors.white,
      ),
      decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }
}
