// ignore_for_file: file_names

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
        if (constraints.maxWidth > 1019) {
          return const WebView(); // Desktop view for wide screens
        } else if (constraints.maxWidth > 500) {
          return const TabletView(); // Tablet view for medium screens
        } else {
          return const MobileView(); // Mobile view for narrow screens
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
  List<String> link = [
    "/hourmeter",
    "/transformer",
    "/wedge-connector",
    "/fuse",
    "/meter-socket",
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
                  'power/powerbg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Gap(100),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 10,
            children: List.generate(img.length, (index) {
              return SizedBox(
                width: 500,
                child: Wrap(
                  children: [
                    const Gap(150),
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
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
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
                    const Gap(150),
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

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletView();
}

class _TabletView extends State<TabletView> {
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
  List<String> link = [
    "/hourmeter",
    "/transformer",
    "/wedge-connector",
    "/fuse",
    "/meter-socket",
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
                  'power/powerbg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Gap(50),
          Column(
            children: List.generate(img.length, (index) {
              return Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 150,
                children: [
                  SizedBox(
                    width: 250,
                    child: Image.asset(
                      img[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Gap(80),
                  SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          title[index],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(80),
                        ButtonWidget(
                          title: 'See more',
                          action: () {
                            context.go(link[index]);
                          },
                          bgColor: const Color.fromARGB(255, 255, 102, 0),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
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
  List<String> link = [
    "/hourmeter",
    "/transformer",
    "/wedge-connector",
    "/fuse",
    "/meter-socket",
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
                  'power/powerbg.jpg',
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
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width * .7,
                      child: Image.asset(
                        img[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Gap(100),
                    SizedBox(
                      width: size.width * .7,
                      child: Text(
                        title[index],
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Gap(10),
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
