import 'package:flutter/material.dart';
import 'package:propereal/phonereg.dart';
import 'package:propereal/text_constants.dart';

class ERegistration extends StatelessWidget {
  const ERegistration({super.key});

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
          height: MediaQuery.of(context).size.height * 0.6,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 50,
                    color: Colors.white,
                  )),
            ),
            PText(
              "We're excited to have you on board and can't wait to see what you'll bring to our community.",
              color: Colors.white,
              fontSize: 18,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: PText(
                  'Phone Number',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 20, left: 20, right: 20, top: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter your Phone Number here',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 62, 78, 202)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 245, 246, 248))),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: PText(
                  'Password',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 20, left: 20, right: 20, top: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your Password here',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 62, 78, 202)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 245, 246, 248))),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => PRegistration(),
                  //   ),
                  // );
                },
                color: Color.fromARGB(255, 74, 30, 155),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer(),
            PText(
              'By registering, you agree to our Terms and Conditions and Privacy Policy.',
              fontSize: 15,
            ),
          ],
        ),
      ]),
    );
  }
}
