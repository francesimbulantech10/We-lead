import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Hourmetersection extends StatefulWidget {
  const Hourmetersection({super.key});

  @override
  State<Hourmetersection> createState() => _Hourmetersection();
}

class _Hourmetersection extends State<Hourmetersection> {
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
    "KWH HOUR METER",
    "Highlights",
    "Main Functionalities",
    "Optional Functionalities"
  ];

  List<String> description = [
    "WLP-1S/2S meter is a singe phase residential meter featuring compact and cost-efficient design. It focuses on the necessary functions and offers an reliable, and accurate meter, capable of measuring kWh in single phase two wire or three wire circuit.",
    "Instantaneous value measurement and display（kW,V, A）Ultrasonic wave for tampering-proof(optional)Battery-backup LCD displayts",
    "Main Functionalities",
    "Optional Functionalities"
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // List of titles and descriptions
                  Column(
                    children: List.generate(title.length, (index) {
                      return Wrap(
                        spacing: 50,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 250,
                                child: Text(
                                  title[index],
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF003B56),
                                  ),
                                ),
                              ),
                              const Gap(50),
                              SizedBox(
                                width: 250,
                                child: Text(
                                  description[index],
                                ),
                              ),
                              const Gap(50),
                            ],
                          ),
                        ],
                      );
                    }),
                  ),
                  const Gap(20),
                  // Single Button after the list
                  ButtonWidget(
                    title: 'Back to power',
                    action: () {
                      String route = '/power'; // Use your desired route
                      context.go(route);
                    },
                    bgColor: const Color.fromARGB(255, 255, 102, 0),
                  ),
                ],
              ),
              const Gap(40),
              Column(
                children: [
                  const Gap(50),
                  SizedBox(
                    width: 300,
                    child: Image.asset(
                      'power/meter.jpg',
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
  List<String> title = [
    "KWH HOUR METER",
    "Highlights",
    "Main Functionalities",
    "Optional Functionalities"
  ];

  List<String> description = [
    "WLP-1S/2S meter is a singe phase residential meter featuring compact and cost-efficient design. It focuses on the necessary functions and offers an reliable, and accurate meter, capable of measuring kWh in single phase two wire or three wire circuit.",
    "Instantaneous value measurement and display（kW,V, A）Ultrasonic wave for tampering-proof(optional)Battery-backup LCD displayts",
    "Main Functionalities",
    "Optional Functionalities"
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
          SizedBox(
            width: 500,
            child: Image.asset('power/meter.jpg'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List of titles and descriptions
              Column(
                children: List.generate(title.length, (index) {
                  return Wrap(
                    spacing: 50,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Text(
                              title[index],
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF003B56),
                              ),
                            ),
                          ),
                          const Gap(50),
                          SizedBox(
                            width: 250,
                            child: Text(
                              description[index],
                            ),
                          ),
                          const Gap(50),
                        ],
                      ),
                    ],
                  );
                }),
              ),
              const Gap(20),
              // Single Button after the list
              ButtonWidget(
                title: 'Back to power',
                action: () {
                  String route = '/power'; // Use your desired route
                  context.go(route);
                },
                bgColor: const Color.fromARGB(255, 255, 102, 0),
              ),
            ],
          ),
          const Gap(40),
        ],
      ),
    );
  }
}
