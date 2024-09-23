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
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              SizedBox(
                width: size.width,
                child: Image.asset('Welead1.jpg'),
              ),
            ],
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
                                bgColor: Colors.blue,
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
    "main-our-blog/electricM.jpg",
    "main-our-blog/market1.jpg",
    "main-our-blog/electricM.jpg",
    "main-our-blog/market1.jpg",
    "main-our-blog/electricM.jpg",
    "main-our-blog/market1.jpg",
  ];

  List<String> title = [
    "Filipino-made local products possess...",
    "Filipino-made local products possess2...",
    "Filipino-made local products possess3...",
    "Filipino-made local products possess4...",
    "Filipino-made local products possess5...",
    "Filipino-made local products possess6...",
    "Filipino-made local products possess7...",
    "Filipino-made local products possess8...",
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
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              SizedBox(
                width: size.width,
                child: Image.asset('Welead1.jpg'),
              ),
            ],
          ),
          const Gap(50),
          // Container(
          //   width: size.width * 8,
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         width: size.width,
          //         child: Wrap(
          //           // mainAxisAlignment: MainAxisAlignment.center,
          //           // crossAxisAlignment: CrossAxisAlignment.center,
          //           alignment: WrapAlignment.center,
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //           spacing: 50,
          //           runSpacing: 50,
          //           children: [
          //             Stack(
          //               alignment: Alignment.center,
          //               children: [
          //                 SizedBox(
          //                   height: 300,
          //                   width: 800,
          //                   child: Image.asset(
          //                     'main-our-blog/electricM.jpg',
          //                     fit: BoxFit.cover,
          //                   ),
          //                 ),
          //                 Container(
          //                   width: 800,
          //                   padding:
          //                       const EdgeInsets.only(left: 100, right: 100),
          //                   child: const Text(
          //                     'Watthour Meter Implemented in North and Central Luzon',
          //                     style: TextStyle(
          //                       fontSize: 24,
          //                       color: Colors.white,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                     maxLines: 8,
          //                     textAlign: TextAlign.center,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             const Gap(200),
          //             const Column(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 SizedBox(
          //                   width: 380,
          //                   child: Text(
          //                     'Tourism has the remarkable ability to inject life...',
          //                     textAlign: TextAlign.start,
          //                     style:
          //                         TextStyle(fontSize: 20, color: Colors.black),
          //                     maxLines: 4,
          //                     overflow: TextOverflow.ellipsis,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //       Gap(50),
          //       SizedBox(
          //         width: size.width,
          //         child: Wrap(
          //           // mainAxisAlignment: MainAxisAlignment.center,
          //           // crossAxisAlignment: CrossAxisAlignment.center,
          //           alignment: WrapAlignment.center,
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //           spacing: 50,
          //           runSpacing: 50,
          //           children: [
          //             SizedBox(
          //               height: 300,
          //               width: 800,
          //               child: Image.asset('main-our-blog/market1.jpg',
          //                   fit: BoxFit.cover),
          //             ),
          //             const Gap(200),
          //             const SizedBox(
          //               width: 380,
          //               child: Text(
          //                 'Tourism has the remarkable ability to inject life...',
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(fontSize: 20, color: Colors.black),
          //                 maxLines: 4,
          //                 overflow: TextOverflow.ellipsis,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Gap(50),
          //       SizedBox(
          //         width: size.width,
          //         child: Wrap(
          //           // mainAxisAlignment: MainAxisAlignment.center,
          //           // crossAxisAlignment: CrossAxisAlignment.center,
          //           alignment: WrapAlignment.center,
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //           spacing: 50,
          //           runSpacing: 50,
          //           children: [
          //             SizedBox(
          //               height: 300,
          //               width: 800,
          //               child: Image.asset('main-our-blog/unlock.jpg',
          //                   fit: BoxFit.cover),
          //             ),
          //             const Gap(200),
          //             const SizedBox(
          //               width: 380,
          //               child: Text(
          //                 'Filipino-made local products possess...',
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(fontSize: 20, color: Colors.black),
          //                 maxLines: 4,
          //                 overflow: TextOverflow.ellipsis,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Gap(50),
          //       SizedBox(
          //         width: size.width,
          //         child: Wrap(
          //           // mainAxisAlignment: MainAxisAlignment.center,
          //           // crossAxisAlignment: CrossAxisAlignment.center,
          //           alignment: WrapAlignment.center,
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //           spacing: 50,
          //           runSpacing: 50,
          //           children: [
          //             SizedBox(
          //               height: 300,
          //               width: 800,
          //               child: Image.asset('main-our-blog/sourcing.jpg',
          //                   fit: BoxFit.cover),
          //             ),
          //             const Gap(200),
          //             const SizedBox(
          //               width: 380,
          //               child: Text(
          //                 'Step into the world of international...',
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(fontSize: 20, color: Colors.black),
          //                 maxLines: 4,
          //                 overflow: TextOverflow.ellipsis,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Gap(50),
          //       SizedBox(
          //         width: size.width,
          //         child: Wrap(
          //           // mainAxisAlignment: MainAxisAlignment.center,
          //           // crossAxisAlignment: CrossAxisAlignment.center,
          //           alignment: WrapAlignment.center,
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //           spacing: 50,
          //           runSpacing: 50,
          //           children: [
          //             SizedBox(
          //               height: 300,
          //               width: 800,
          //               child: Image.asset('main-our-blog/solar.jpg',
          //                   fit: BoxFit.cover),
          //             ),
          //             const Gap(200),
          //             const SizedBox(
          //               width: 380,
          //               child: Text(
          //                 '10 KW off grid solar system is implemented in Pampanga, Philippines in 2015.',
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(fontSize: 20, color: Colors.black),
          //                 maxLines: 4,
          //                 overflow: TextOverflow.ellipsis,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

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
                        SizedBox(
                          height: 300,
                          width: 800,
                          child: Image.asset(img[index], fit: BoxFit.cover),
                        ),
                        const Gap(200),
                        SizedBox(
                          width: 380,
                          child: Text(
                            title[index],
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const Gap(50),
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
