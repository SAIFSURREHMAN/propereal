import 'package:flutter/material.dart';
import 'package:propereal/registration1.dart';
import 'package:propereal/search_screen.dart';
import 'package:propereal/text_constants.dart';
import 'package:provider/provider.dart';

import 'ad_model.dart';
import 'backend_data.dart';
import 'detail_page.dart';
import 'heartc.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: PageView.builder(
                    itemCount: imagePaths.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.asset(
                          imagePaths[index],
                          height: MediaQuery.of(context).size.height * 0.5,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                SafeArea(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchScreen(),
                        ));
                      },
                      icon: Icon(
                        Icons.search,
                        size: 50,
                        color: const Color.fromARGB(255, 4, 4, 4),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Registration(),
                        ));
                      },
                      icon: Icon(
                        Icons.supervised_user_circle,
                        size: 50,
                        color: const Color.fromARGB(255, 4, 4, 4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: PText(
                'Showing All Result',
                fontSize: 24,
                weight: FontWeight.w600,
              ),
            ),
            ListView.builder(
              itemCount: AdList.length,
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // Disable outer ListView scrolling
              itemBuilder: (context, int index) {
                Ad ad = AdList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailPage(ad),
                    ));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
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
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
