

import 'package:flutter/material.dart';
import 'package:traffico/screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder:(context,constraints) =>   Stack(
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              decoration:  BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.indigo.shade900,
                    Colors.brown,
                    Colors.brown.shade200,
                    Colors.grey.shade800.withOpacity(0.5)

                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
            ),
            Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              decoration:  BoxDecoration(
                color: Colors.white60.withOpacity(0.3)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: constraints.maxWidth,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: constraints.maxWidth,
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_open_outlined),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.indigo.shade900,
                          value: rememberMe, onChanged: (bool? value) {
                            setState(() {
                              rememberMe = value!;
                            });
                        },
                        ),
                        const Text("Remember me",style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 25.0),
                    child: Container(
                      width: constraints.maxWidth,
                      child: TextButton(onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black)
                      ),
                      child:const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text("Login",
                         style: TextStyle(
                           color: Colors.white
                         ),
                        ),
                      ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Positioned(
              top: constraints.maxHeight * 0.90,
                left: 16.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't Have An Account ? ",style: TextStyle(
                      color: Colors.white
                    ),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignUpScreen()));
                      },
                      child: Text("SignUp",
                       style: TextStyle(
                         color: Colors.indigo.shade900
                       ),
                      ),
                    )

                  ],
                )),
            Positioned(
                top: constraints.maxHeight * 0.15,
                child: const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Log into ",style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0,),
                        child: Text("Your Account",style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                        ),
                      )
                    ],
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
