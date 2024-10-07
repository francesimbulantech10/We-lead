import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Jetvanesection extends StatefulWidget {
  const Jetvanesection({super.key});

  @override
  State<Jetvanesection> createState() => _Jetvanesection();
}

class _Jetvanesection extends State<Jetvanesection> {
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
    "Multi-jet Vane Wheel Water Meters",
    "LXS-15E~LXS-40E",
    "Measuring the volume of cold potable water passing through the pipelin",
    "Special design of the Inner clock movement, sharp initial flow rate, achieve the desired result of “each drop counts”, Adopt Nylon material, health non-toxic, anti-aging, no rusting problem, fully reaches safety requirements of water meter manufacturing.",
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
                    child: Text('Meter Socket',
                        style: TextStyle(
                          fontSize: 44,
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
                          ),
                        ],
                      );
                    }),
                  ),
                  SizedBox(
                    width: 500,
                    child: Image.asset(
                      'water/Basicmeter.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Gap(50),
                  SizedBox(
                    width: 500,
                    child: Image.asset(
                      'water/Basicmeter.jpg',
                      fit: BoxFit.contain,
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
                ],
              ),
              const SizedBox(height: 100),
              Column(
                children: [
                  const Gap(200),
                  SizedBox(
                    width: 400,
                    child: Image.asset(
                      'water/water.jpg',
                      fit: BoxFit.contain,
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
    "Multi-jet Vane Wheel Water Meters",
    "LXS-15E~LXS-40E",
    "Measuring the volume of cold potable water passing through the pipelin",
    "Special design of the Inner clock movement, sharp initial flow rate, achieve the desired result of “each drop counts”, Adopt Nylon material, health non-toxic, anti-aging, no rusting problem, fully reaches safety requirements of water meter manufacturing.",
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
          SizedBox(
            width: size.width * .8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Gap(50),
                    SizedBox(
                      width: size.width * .5,
                      child: Image.asset(
                        'water/water.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * .8,
                  child: const Text(
                    'Meter Socket',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // List of titles and descriptions

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
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const Gap(50),
                              ],
                            ),
                          ],
                        );
                      }),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: size.width * .8,
                          child: Image.asset(
                            'water/Basicmeter.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          width: size.width * .8,
                          child: Image.asset(
                            'water/Basicmeter.jpg',
                            fit: BoxFit.contain,
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
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
