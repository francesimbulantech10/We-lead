import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Watersection extends StatefulWidget {
  const Watersection({super.key});

  @override
  State<Watersection> createState() => _Watersection();
}

class _Watersection extends State<Watersection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1100) {
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
    "water/water.jpg",
    "water/water2.jpg",
    "water/water3.jpg",
    "water/water4.jpg",
  ];

  List<String> title = [
    "MULTI-JET VANE WHEEL WATER METER",
    "CLASS C R160 VANE WHEEL WATER METER",
    "HORIZONTAL WOLTMANN DRY DIAL BULK WATER METER",
    "DRINKING WATER MEASURING INSTRUMENT (LXH-8)",
  ];

  List<String> link = [
    "/jetvane",
    "/r160-vane",
    "/woltmann",
    "/water-lxh",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Container(
            color: const Color(0xFF003B56),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: SizedBox(
                width: size.width,
                height: 300,
                child: Image.asset(
                  'water/waterbg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: List.generate(img.length, (index) {
              return SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Gap(150),
                    Wrap(
                      children: [
                        SizedBox(
                          width: 250,
                          child: Image.asset(
                            img[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          width: 150,
                          child: Text(
                            title[index],
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          width: 380,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ButtonWidget(
                                title: 'See more',
                                action: () {
                                  context.go(link[index]);
                                },
                                bgColor: const Color.fromARGB(255, 255, 102, 0),
                              ),
                              // Column(
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW 
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW 
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW 
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW 
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW 
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW 
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW 




class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  List<String> img = [
    "water/water.jpg",
    "water/water2.jpg",
    "water/water3.jpg",
    "water/water4.jpg",
  ];

  List<String> title = [
    "MULTI-JET VANE WHEEL WATER METER",
    "CLASS C R160 VANE WHEEL WATER METER",
    "HORIZONTAL WOLTMANN DRY DIAL BULK WATER METER",
    "DRINKING WATER MEASURING INSTRUMENT (LXH-8)",
  ];

  List<String> link = [
    "/jetvane",
    "/r160-vane",
    "/woltmann",
    "/water-lxh",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Container(
            color: const Color(0xFF003B56),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: SizedBox(
                width: size.width,
                height: 300,
                child: Image.asset(
                  'water/waterbg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Gap(50),
          Column(
            spacing: 100,
            children: List.generate(img.length, (index) {
              return SizedBox(
                width: size.width * .9,
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width * .7,
                      child: Image.asset(
                        img[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Gap(50),
                    SizedBox(
                      width: size.width * .6,
                      child: Text(
                        style: const TextStyle(
                            color: Color(0xFF003B56),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        title[index],
                      ),
                    ),
                    const Gap(50),
                    ButtonWidget(
                      title: 'See more',
                      action: () {
                        context.go(link[index]);
                      },
                      bgColor: const Color.fromARGB(255, 255, 102, 0),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
