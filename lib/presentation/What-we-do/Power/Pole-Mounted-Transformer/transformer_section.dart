import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Transformersection extends StatefulWidget {
  const Transformersection({super.key});

  @override
  State<Transformersection> createState() => _Transformersection();
}

class _Transformersection extends State<Transformersection> {
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
    "Single-phase Pole Mounted Transformer",
    "Features",
    "Basic Specifications",
    "Standards"
  ];

  List<String> description = [
    "The WLP single-phase pole-mounted distribution transformer adopts high quality silicon steel iron core, mounted on the pole, which have small size and small infrastructure investment. The transformer reduce the length of the low-voltage distribution line, reduce the loss of more than 60%. The series of tranformers are specially designed for the decentralization distribution network of servicing residential overhead distribution loads of town and countryside. They are also suitable for light and diversified power.",
    "Quick and easy installation Excellent insulation and sealing system High reliability Low operating cost",
    "Frequency: 50 or 60 HZ Capacity Range: 5~500kva Primary Voltage: 2.4~36KV Secondary voltage: 120~600",
    "I EC 60076 ANSI/IEEEC.57.12.00 ANSI/IEEEC.57.12.31 ANSI/IEEE C.57.12.90"
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
                  const Gap(20),
                  SizedBox(
                    width: 300,
                    child: Image.asset(
                      'power/meter2.jpg',
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
    "Single-phase Pole Mounted Transformer",
    "Features",
    "Basic Specifications",
    "Standards"
  ];

  List<String> description = [
    "The WLP single-phase pole-mounted distribution transformer adopts high quality silicon steel iron core, mounted on the pole, which have small size and small infrastructure investment. The transformer reduce the length of the low-voltage distribution line, reduce the loss of more than 60%. The series of tranformers are specially designed for the decentralization distribution network of servicing residential overhead distribution loads of town and countryside. They are also suitable for light and diversified power.",
    "Quick and easy installation Excellent insulation and sealing system High reliability Low operating cost",
    "Frequency: 50 or 60 HZ Capacity Range: 5~500kva Primary Voltage: 2.4~36KV Secondary voltage: 120~600",
    "I EC 60076 ANSI/IEEEC.57.12.00 ANSI/IEEEC.57.12.31 ANSI/IEEE C.57.12.90"
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
          SizedBox(
            width: 300,
            child: Image.asset(
              'power/meter2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Gap(20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List of titles and descriptions
              Column(
                children: List.generate(title.length, (index) {
                  return Wrap(
                    runSpacing: 20,
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
                          const Gap(10),
                          SizedBox(
                            width: 250,
                            child: Text(
                              description[index],
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          const Gap(10),
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
