
import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class PowerSection extends StatefulWidget {
  const PowerSection({super.key});

  @override
  State<PowerSection> createState() => _OurBlogSection();
}

class _OurBlogSection extends State<PowerSection> {
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
    "Power/meter.jpg",
    "Power/meter2.jpg",
    "Power/meter3.jpg",
    "Power/meter4.jpg",
    "Power/meter5.jpg",
  ];

  List<String> title = [
    "KWH HOUR METER",
    "Single-phase Pole Mounted Transformer",
    "WLP SELF LOCKING WEDGE CONNECTOR",
    "Distribution Fuse cutout",
    "METER SOCKETS",
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
