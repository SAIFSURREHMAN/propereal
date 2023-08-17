import 'package:flutter/material.dart';
import 'package:propereal/phonereg.dart';
import 'package:propereal/text_constants.dart';
import 'login.dart';
import 'registration2.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 15, 31, 76),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          height: MediaQuery.of(context).size.height * 0.65,
        ),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                // child: IconButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     icon: Icon(
                //       Icons.keyboard_arrow_left,
                //       size: 50,
                //       color: Colors.white,
                //     )),
              
              PText(
                'Register Account',
                fontSize: 30,
                color: Colors.white,
              ),
              PText(
                "We're thrilled to have you join our community.",
                fontSize: 18,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: PText(
                    'Name',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your Name here',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 62, 78, 202)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 245, 246, 248))),
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: PText(
                    'Email Address',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Enter your Email Address here',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 62, 78, 202)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 245, 246, 248))),
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topCenter,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ERegistration(),
                    ));
                  },
                  color: Color.fromARGB(255, 74, 30, 155),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: PText("Login",color: Colors.white,fontSize: 18,),
                  ),
                ),
              ),
              PText(
                "Or Continue With",
                fontSize: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PhoneRegistration(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.call,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.login_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PText(
                'By registering, you agree to our Terms and Conditions and Privacy Policy.',
                fontSize: 15,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
