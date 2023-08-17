import 'package:flutter/material.dart';
import 'package:propereal/mainscreen.dart';
import 'package:propereal/registration1.dart';
import 'showing_result.dart';
import 'text_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                // alignment: Alignment.center,
                child: PText(
                  'To Buy, Rent Or Sell.',
                  fontSize: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){  Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Registration(),
                        ));},
                  child: Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/sell.png',
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(height: 10),
                        PText(
                          'Sell',
                          fontSize: 15,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ));
                  },
                  child: Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/buy.png',
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(height: 10),
                        PText(
                          'Buy',
                          fontSize: 15,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/rnt.png',
                        height: 60,
                      ),
                      SizedBox(height: 10),
                      PText(
                        'Rent',
                        fontSize: 15,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       bottom: 5, left: 20, right: 20, top: 20),
            //   child: Align(
            //     alignment: AlignmentDirectional.centerStart,
            //     child: PText(
            //       'Your Location',
            //       fontSize: 26,
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       bottom: 40, left: 20, right: 20, top: 20),
            //   child: Material(
            //     color: Colors.grey,
            //     elevation: 5.0,
            //     child: TextField(
            //       decoration: InputDecoration(
            //         labelText: 'Enter Your Location',
            //         labelStyle: TextStyle(
            //           color: Color(0xff283e49),
            //           fontWeight: FontWeight.w700,
            //           fontSize: 20,
            //         ),
            //         enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Color(0xff283e49)),
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.blue),
            //           borderRadius: BorderRadius.circular(50),
            //         ),
            //         filled: true,
            //         fillColor: Colors.white,
            //         contentPadding:
            //             EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            //         prefixIcon: Icon(Icons.location_on_outlined),
            //         suffixIcon: Icon(Icons.clear),
            //         floatingLabelBehavior: FloatingLabelBehavior.always,
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PText(
                    'Property Type',
                    fontSize: 26,
                  ),
                  PText(
                    'see all',
                    color: Colors.grey.shade900,
                    fontSize: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: PText(
                          'Any',
                          fontSize: 20,
                          color: Color(0xff0d232d),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                            left: 20,
                          ),
                          child: PText(
                            'Building',
                            fontSize: 20,
                            color: Color(0xff0d232d),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: PText(
                          'Flat',
                          fontSize: 20,
                          color: Color(0xff0d232d),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: PText(
                          'Appartment',
                          fontSize: 20,
                          color: Color(0xff0d232d),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                            left: 20,
                          ),
                          child: PText(
                            'Banglow',
                            fontSize: 20,
                            color: Color(0xff0d232d),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child:Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: PText(
                          'Commercial',
                          fontSize: 20,
                          color: Color(0xff0d232d),
                        ),
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
