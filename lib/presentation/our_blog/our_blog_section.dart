// ignore: file_names

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/btn_widget.dart';

class OurBlogSection extends StatefulWidget {
  const OurBlogSection({super.key});

  @override
  State<OurBlogSection> createState() => _OurBlogSection();
}

class _OurBlogSection extends State<OurBlogSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1274) {
          return const WebView();
        } else {
          return const MobileView();
        }
      },
    );
  }
}

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  List<String> img = [
    "main-our-blog/electricM.jpg",
    "main-our-blog/market1.jpg",
    "main-our-blog/unlock.jpg",
    "main-our-blog/sourcing.jpg",
    "main-our-blog/solar.jpg",
  ];

  List<String> title = [
    "Watthour Meter Implemented in North and Central Luzon",
    "Empowerment Through Tourism: A Transformative Journey of Growth and Connection",
    "Unlocking the Market Value of Filipino-Made Local Products for Export",
    "Unleashing Global Potential: We Lead, We Source with ANTS Sourcing",
    "10KW off grid solar system in Pampanga, Philippines",
  ];

  List<String> desc = [
    "Since 2014, more than 100,000 pcs WLP Watthour Meters Implemented in North...",
    "Tourism has the remarkable ability to inject life...",
    "Filipino-made local products possess...",
    "Step into the world of international...",
    "10 KW off grid solar system is implemented in Pampanga, Philippines in 2015.",
  ];

  List<String> link = [
    "/watthour",
    "/empower",
    "/unlocking",
    "/unleashing",
    "/solar",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            height: 350,
            child: Image.asset(
              'our-blogs/ourblogbg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Gap(50),
          SizedBox(
            width: size.width,
            child: Column(
              children: List.generate(img.length, (index) {
                return Column(
                  children: [
                    Wrap(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 50,
                      runSpacing: 50,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            InkWell(
                              child: SizedBox(
                                height: 300,
                                width: 800,
                                child: Image.asset(
                                  img[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 800,
                              // padding:
                              //     const EdgeInsets.only(left: 130, right: 130),
                              child: Text(
                                title[index],
                                style: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 8,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        // Text("data",),
                        // AutoSizeInterText(text: title[index], fontSize: 56,fw: FontWeight.bold,),
                        SizedBox(
                          width: 380,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                desc[index], // Replace with your desired index
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Gap(20),
                              ButtonWidget(
                                title: 'See more',
                                action: () {
                                  context.go(link[index]);
                                  //  context.go("/empower");
                                },
                                bgColor: const Color.fromARGB(255, 255, 102, 0),
                              ),
                              // Column(
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Gap(50),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

//
//
//
//
//

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  List<String> img = [
    "main-our-blog/electricM.jpg",
    "main-our-blog/market1.jpg",
    "main-our-blog/unlock.jpg",
    "main-our-blog/sourcing.jpg",
    "main-our-blog/solar.jpg",
  ];

  List<String> title = [
    "Watthour Meter Implemented in North and Central Luzon",
    "Empowerment Through Tourism: A Transformative Journey of Growth and Connection",
    "Unlocking the Market Value of Filipino-Made Local Products for Export",
    "Unleashing Global Potential: We Lead, We Source with ANTS Sourcing",
    "10KW off grid solar system in Pampanga, Philippines",
  ];

  List<String> desc = [
    "Since 2014, more than 100,000 pcs WLP Watthour Meters Implemented in North and Central Luzon",
    "Tourism has the remarkable ability to inject life...",
    "Filipino-made local products possess...",
    "Step into the world of international...",
    "10 KW off grid solar system is implemented in Pampanga, Philippines in 2015.",
  ];

  List<String> link = [
    "/watthour",
    "/empower",
    "/unlocking",
    "/unleashing",
    "/solar",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              Container(
                color: const Color(0xFF003B56),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    width: size.width,
                    height: 300,
                    child: Image.asset(
                      'our-blogs/ourblogbg.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(80),
          SizedBox(
            width: size.width,
            child: Column(
              children: List.generate(img.length, (index) {
                return Column(
                  children: [
                    Wrap(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 50,
                      runSpacing: 50,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            InkWell(
                              child: SizedBox(
                                height: 300,
                                width: 800,
                                child: Image.asset(
                                  img[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                width: 800,
                                // padding:
                                //     const EdgeInsets.only(left: 130, right: 130),
                                child: Text(
                                  title[index],
                                  style: const TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 8,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            width: 380,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  desc[
                                      index], // Replace with your desired index
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.black),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Gap(20),
                                ButtonWidget(
                                  title: 'See more',
                                  action: () {
                                    context.go(link[index]);
                                    //  context.go("/empower");
                                  },
                                  bgColor:
                                      const Color.fromARGB(255, 255, 102, 0),
                                ),
                                // Column(
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(50),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
