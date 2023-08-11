import 'package:flutter/material.dart';
import 'package:propereal/detail_page.dart';
import 'package:propereal/text_constants.dart';

import 'ad_model.dart';
import 'backend_data.dart';

class ShowResult extends StatelessWidget {
  const ShowResult({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 50,
              color: Colors.grey.shade700,
            )),
        title: RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Color(0xff283e49),
                    size: 24,
                  ),
                ),
              ),
              TextSpan(
                  text: 'Karachi',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff283e49),
                  )),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            PText(
              'Showing Result',
              fontSize: 25,
            ),
            PText(
              '100 properties found',
              fontSize: 18,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: AdList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, int index) {
                    Ad ad = AdList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(ad),
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(10)),
                              child: Image.asset(
                                ad.picture ?? '',
                                errorBuilder: (context, error, stackTrace) {
                                  return const PText('No image');
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                            PText(
                              ad.type ?? 'Product Type',
                              fontSize: 15,
                              weight: FontWeight.bold,
                            ),
                            Text(
                              ad.desc ?? 'No description',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff283e49)),
                              maxLines: 1,
                              softWrap: false,
                              overflow: TextOverflow.fade,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PText(
                                  ad.location ?? 'Location Not found',
                                  fontSize: 15,
                                  weight: FontWeight.bold,
                                ),
                                PText(
                                  '${ad.price}',
                                  fontSize: 15,
                                  weight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
