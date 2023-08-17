import 'package:flutter/material.dart';
import 'package:propereal/registration1.dart';
import 'package:propereal/detail_page.dart';
import 'package:propereal/text_constants.dart';
import 'package:provider/provider.dart';
import 'heartc.dart';
import 'ad_model.dart';
import 'backend_data.dart';

class ShowResult extends StatelessWidget {
  const ShowResult({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EligiblityScreenProvider(),
      child: Scaffold(
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
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Registration(),
                ));
              },
              icon: Icon(
                Icons.add,
                size: 40,
                color: Colors.black,
              ),
            )
          ],
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
                    shrinkWrap: false,
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
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
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
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      PText(
                                        ad.type ?? 'Product Type',
                                        fontSize: 15,
                                        weight: FontWeight.bold,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                CircleAvatar(
                                                  child: Icon(
                                                    Icons.bed_outlined,
                                                    size: 20,
                                                  ),
                                                  backgroundColor: Colors.white,
                                                ),
                                                PText('${ad.bedroom}'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                CircleAvatar(
                                                  child: Icon(
                                                    Icons.shower_outlined,
                                                    size: 20,
                                                  ),
                                                  backgroundColor: Colors.white,
                                                ),
                                                PText('${ad.bath}'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                CircleAvatar(
                                                  child: Icon(
                                                    Icons.home,
                                                    size: 20,
                                                  ),
                                                  backgroundColor: Colors.white,
                                                ),
                                                PText(
                                                  ad.size ??
                                                      'Size not Available',
                                                ),
                                              ],
                                            ),
                                            Consumer<EligiblityScreenProvider>(
                                              builder: (context,
                                                  heartColorModel, child) {
                                                return IconButton(
                                                  onPressed: () {
                                                    heartColorModel
                                                        .changeColor();
                                                  },
                                                  icon: Icon(Icons
                                                      .favorite_border_sharp),
                                                  iconSize: 40,
                                                  color: heartColorModel.isRed
                                                      ? Colors.red
                                                      : Colors.black,
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
