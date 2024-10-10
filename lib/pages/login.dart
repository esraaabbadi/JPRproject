import 'package:equapp/controller/Login.dart';
import 'package:equapp/pages/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController loginController = new LoginController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isRememberMeChecked = false;
  // Initial state for the checkbox
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Blue background
          Container(
            color: Color(
                0xFF003F54), // Use the correct blue shade as per your design
            height: MediaQuery.of(context).size.height *
                0.4, // Cover the top part of the screen
          ),
          // White container with rounded edges
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // First button
                    TextField(
                      decoration: InputDecoration(
                        labelText: "رمز الدخول الى الخدمة",
                        labelStyle:
                            TextStyle(color: Color(0xFF003F54), fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Color(0xFF003F54), // Border color
                              width: 2.0, // Border width
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(16.0), // Rounded edges
                            borderSide: BorderSide(
                              color: Color(0xFF003F54),
                            ) // Change this color when focused
                            ),
                      ),
                    ),
                    SizedBox(height: 16), // Spacing between buttons
                    // Divider text
                    SizedBox(height: 16), // Spacing between buttons
                    // Second button
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: "كلمة المرور",
                        labelStyle:
                            TextStyle(color: Color(0xFF003F54), fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color(0xFF003F54), // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(16.0), // Rounded edges
                            borderSide: BorderSide(
                              color: Color(0xFF003F54),
                            ) // Change this color when focused
                            ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 16.0),
                      ),
                    ),

                    SizedBox(height: 24), // Spacing below the buttons

                    // Row for Remember Me and Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Forgot Password Button on the Left
                        TextButton(
                          onPressed: () {
                            // Add action for forgot password
                          },
                          child: Text(
                            'نسيت كلمة المرور',
                            style: TextStyle(
                              color: Color(
                                  0xFF003F54), // Same color as the button text
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Remember Me Checkbox on the Right
                        Row(
                          children: [
                            Text(
                              'تذكرني',
                              style: TextStyle(
                                color: Color(
                                    0xFF003F54), // Same color as button text
                              ),
                            ),
                            Checkbox(
                              value: isRememberMeChecked,
                              onChanged: (value) {
                                // Handle checkbox state
                              },
                              activeColor:
                                  Color(0xFF003F54), // Checkbox active color
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            loginController.checklogin();
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute<void>(
                            //     builder: (BuildContext context) => HomePage(),
                            //   ),
                            // );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color(
                                0xFF003F54), // Set the background color to blue
                            padding: EdgeInsets.symmetric(
                                vertical: 16.0), // Adjust padding
                          ),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 85, 83, 83)),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Logo and ministry text
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.1, // Positioning the logo
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo.png', // Add the path to your logo image here
                  height: 50,
                ),
                SizedBox(height: 10),
                Text(
                  'شركة مصفاة البترول الارنية\nJordan Petrolum Refinary CO.LTD\n نظام ادارة ومراقبة المعدات في الشركة',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
