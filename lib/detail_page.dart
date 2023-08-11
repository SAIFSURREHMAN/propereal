import 'package:flutter/material.dart';
import 'package:propereal/text_constants.dart';

import 'ad_model.dart';

class DetailPage extends StatelessWidget {
  final Ad ad;

  const DetailPage(this.ad, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
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
                    size: 50, color: Colors.black),
              ),
            ),
          ],
        ),
        PText(
          ad.type ?? 'Type',
          fontSize: 30,
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Flexible(
          child: Text(
            ad.desc ?? 'No description',
            style: TextStyle(fontSize: 20, color: Color(0xff283e49)),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Color(0xff283e49),
                    size: 14,
                  ),
                ),
              ),
              TextSpan(
                  text: ad.location ?? 'Not Defined',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff283e49),
                  )),
            ],
          ),
        ),
        Spacer(),
        Text(
          '${ad.price}',
          style: TextStyle(fontSize: 35, color: Colors.redAccent),
        ),
      ],
    ));
  }
}
