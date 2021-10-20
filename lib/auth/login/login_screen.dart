import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_task/auth/sign_up/sign_up_screens.dart';
import 'package:gdsc_task/screens/home_screen/home_sccreen.dart';
import 'package:gdsc_task/widgets/componants/goto/go_to.dart';
import 'package:gdsc_task/widgets/componants/togel_text/togel_text.dart';
import '../../widgets/componants/text_field/default_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      'Hello',
                      style: TextStyle(
                          fontSize: 75,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Sign into your Account',
                      style: TextStyle(
                          fontSize: 17,
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
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GoTo(function: (){
                   Navigator.pushReplacement(context,   MaterialPageRoute(
                        builder: (context)=>HomeScreen(),
                      ));
                    },text: 'Sign in',),
                    SizedBox(height: 50,),
                    TogelText(
                      qustion: 'Don\'t have an Account ?',
                      operation: 'Create',
                      function: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      },
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
}
