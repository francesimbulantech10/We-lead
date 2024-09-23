
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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: SizedBox(
    
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(img.length, (index) {
            return Wrap(
              spacing: 50,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Image.asset(
                        img[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Gap(50),
                    SizedBox(
                      width: 150,
                      child: Text(
                        title[index],
                      ),
                    ),
                     Gap(50),
                    SizedBox(
                      width: 380,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          ButtonWidget(
                            title: 'See more',
                            action: () {
                              String route;
                              if (img.isEmpty == 0) {
                                route = '/';
                              } else if (img.isEmpty == 1) {
                                route = '/what-we-do';
                              } else if (img.isEmpty == 2) {
                                route = '/about-us';
                              } else if (img.isEmpty == 3) {
                                route = '/our-blog';
                              }  else {
                                route = '/';
                              }
                              context.go(route);
                            },
                            bgColor: Colors.blue,
                          ),
                          // Column(
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
 
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      
    );
  }
}
