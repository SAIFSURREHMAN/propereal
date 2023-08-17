import 'package:flutter/material.dart';
import 'package:propereal/text_constants.dart';
import 'package:provider/provider.dart';
import 'ad_model.dart';
import 'heartc.dart';

class DetailPage extends StatelessWidget {
  final Ad ad;

  const DetailPage(this.ad, {super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EligiblityScreenProvider(),
      child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),),
                    child: Image.asset(
                      ad.picture ?? '',
                      errorBuilder: (context, error, stackTrace) {
                        return const PText('No image');
                      },
                      height: MediaQuery.of(context).size.height * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.keyboard_arrow_left,
                          size: 50, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PText(
                      ad.type ?? 'Type',
                      fontSize: 27,
                      weight: FontWeight.bold,
                    ),
                     Text(
                  '\$ ${ad.price}',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.bed_outlined,
                            size: 37,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        PText('${ad.bedroom} Bedroom'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.shower_outlined,
                            size: 37,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        PText('${ad.bath} Bathroom'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.house_outlined,
                            size: 30,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        PText(
                          ad.size ?? 'Size not Available',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: PText("Description",weight: FontWeight.bold,fontSize: 22,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 5, 10),
                child: PText(
                  ad.desc ?? 'No description',
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Color(0xff283e49),
                            size: 30,
                          ),
                        ),
                      ),
                      TextSpan(
                          text: ad.location ?? 'Not Defined',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff283e49),
                          )),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: (){

                      //Make Book now Page..!

                    },
                    child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 15, 31, 76),borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: PText("Book Now",color: Colors.white,weight: FontWeight.bold,fontSize: 20,),
                      ),
                    ),
                  ),
                ),
              ),
            ],
                  ),
                ),
          )),
    );
  }
}
