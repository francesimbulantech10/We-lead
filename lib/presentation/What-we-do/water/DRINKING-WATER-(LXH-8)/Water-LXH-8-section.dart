import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Waterlxhsection extends StatefulWidget {
  const Waterlxhsection({super.key});

  @override
  State<Waterlxhsection> createState() => _Waterlxhsection();
}

class _Waterlxhsection extends State<Waterlxhsection> {
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
  List<String> title = [
    "Full Name:",
    "Model No.:",
    "Application",
    "Product Advantages:",
    "Technical Standards:",
    "Technical Data",
  ];

  List<String> description = [
    "Drinking Water Measuring Instrument (LXH-8)",
    "LXH-8",
    "Measuring the volume of cold potable water passing through the pipeline",
    "High sensitivity, measuring accuracy, environmental friendly material.",
    "ISO4064-1~3:2005",
    "Water Temperature – 0.1C – 59 Working Pressure – 1.0Mpa/1.6Mp Head Loss – 0.063Mp Max. Permissive Error – maximum permissible error: upper zone (Q2<Q<Q4) ,+2%;low zone (Q1<Q<Q2), + +5%",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // List of titles and descriptions
                  const SizedBox(
                    child: Text('DRINKING WATER MEASURING INSTRUMENT (LXH-8)',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const Gap(20),
                  Column(
                    children: List.generate(title.length, (index) {
                      return Wrap(
                        spacing: 10,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 380,
                                child: Text(
                                  title[index],
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF003B56),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              SizedBox(
                                width: 380,
                                child: Text(
                                  description[index],
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              const Gap(50),
                            ],
                          )
                        ],
                      );
                    }),
                  ),
                  SizedBox(
                    width: 500,
                    child: Image.asset(
                      'water/BasicMeter4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(
                    width: 500,
                    child: Image.asset(
                      'water/install4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Single Button after the list
                  const Gap(50),
                  ButtonWidget(
                    title: 'Back to water',
                    action: () {
                      String route = '/water'; // Use your desired route
                      context.go(route);
                    },
                    bgColor: const Color.fromARGB(255, 255, 102, 0),
                  ),
                ],
              ),
              const Gap(150),
              Column(
                children: [
                  const Gap(300),
                  SizedBox(
                    width: 400,
                    child: Image.asset(
                      'water/water4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
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
  List<String> title = [
    "Full Name:",
    "Model No.:",
    "Application",
    "Product Advantages:",
    "Technical Standards:",
    "Technical Data",
  ];

  List<String> description = [
    "Drinking Water Measuring Instrument (LXH-8)",
    "LXS-15E~LXS-40E",
    "Measuring the volume of cold potable water passing through the pipeline",
    "High sensitivity, measuring accuracy, environmental friendly material.",
    "ISO4064-1~3:2005",
    "Water Temperature – 0.1C – 59 Working Pressure – 1.0Mpa/1.6Mp Head Loss – 0.063Mp Max. Permissive Error – maximum permissible error: upper zone (Q2<Q<Q4) ,+2%;low zone (Q1<Q<Q2), + +5%",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            const Gap(100),
            SizedBox(
              width: size.width * .6,
              child: Image.asset(
                'water/water4.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Gap(50),
            SizedBox(
              width: size.width * .6,
              child: const Text(
                'DRINKING WATER MEASURING INSTRUMENT (LXH-8)',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(50),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(title.length, (index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * .8,
                      child: Text(
                        title[index],
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF003B56),
                        ),
                      ),
                    ),
                    const Gap(20),
                    SizedBox(
                      width: size.width * .8,
                      child: Text(
                        description[index],
                      ),
                    ),
                    const Gap(50),
                  ],
                );
              }),
            ),
            const Gap(20),
            SizedBox(
              width: size.width * .8,
              child: Image.asset(
                'water/BasicMeter4.jpg',
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(
              width: size.width * .8,
              child: Image.asset(
                'water/install4.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Gap(50),
            // Single Button after the list
            ButtonWidget(
              title: 'Back to water',
              action: () {
                String route = '/water'; // Use your desired route
                context.go(route);
              },
              bgColor: const Color.fromARGB(255, 255, 102, 0),
            ),
            const Gap(50),
          ],
        ),
      ),
    );
  }
}
