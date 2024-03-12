import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/splash-screen.gif',
              fit: BoxFit.fill,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(),
                Center(
                  child: SizedBox(
                    height: 500,
                    child: AspectRatio(
                      aspectRatio: 3 / 4.5,
                      child: PhysicalModel(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topLeft,
                                  colors: [
                                    Color(0xfffeea04e).withOpacity(0.8),
                                    // Color(0xff7d583d),
                                    // Color(0xff3f98cf),
                                    Color(0xfffeea04e).withOpacity(0.7),

                                    //  Color(0xfffeea04e).withOpacity(0.7),
                                    Color(0xff7d583d).withOpacity(0.8),
                                    //  Color(0xfffeea04e).withOpacity(0.7),
                                    Color(0xff3f98cf).withOpacity(0.99),
                                  ])),
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: MediaQuery.of(context).size.width * 1.2,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.white,
                                    ),
                                    hintText: 'User Name or Email',
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Color(0xffffffff),
                                    )),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Color(0xffffffff),
                                    )),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.password,
                                      color: Colors.white,
                                    ),
                                    hintText: 'User Name or Email',
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Color(0xffffffff),
                                    )),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Color(0xffffffff),
                                    )),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Color(0xffffffff),
                                    )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Checkbox(
                                        value: value,
                                        onChanged: (bool? newValue) {}),
                                    Text(
                                      'remember me',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Forget Password?',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: const Size(150, 45),
                                  // Set the background color of the button to blue
                                ),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Set the text color to white
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                ))),
                                child: const Text(
                                  'Or Get Registered',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Set the text color to white
                                  ),
                                ),
                              ),
                            ],
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
            bottom: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.width * 0.35,
            right: MediaQuery.of(context).size.width * 0.35,
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.white,
                width: 0.5,
              ))),
              child: const Text(
                'Log as Admin',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    )

        /*Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.topRight,
                colors: [
              Color(0xfffaa21a),
              Color(0xff40a1dc).withBlue(252),
            ])),
      ),*/
        );
  }
}
