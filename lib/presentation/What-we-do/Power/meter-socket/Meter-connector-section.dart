import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Metersection extends StatefulWidget {
  const Metersection({super.key});

  @override
  State<Metersection> createState() => _Metersection();
}

class _Metersection extends State<Metersection> {
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
    "METER SOCKETS",
    "Basic Specifications",
    "Standards",
  ];

  List<String> description = [
    "A meter socket is a type of outdoors electrical socket that connects a watt-hour meter, or electrical meter, to a house. These are the meters outside houses, commercial buildings and construction sites that measure the amount of power used so the supplier knows what to charge.",
    "100A and 200A available, Single phase 2 or 3 wire, Three phase four wires Mounting: Surface, Pole outdoor Dia cast Aluminum electrostatically applied epoxy baked gray powder finished. Conforms to ANSI 12.7",
    "ANSI 37.42"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: 1200,
      child: Row(
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
              const Gap(20),
              // Single Button after the list
              ButtonWidget(
                title: 'Back to power',
                action: () {
                  String route = '/power'; // Use your desired route
                  context.go(route);
                },
                bgColor: Colors.blue,
              ),
            ],
          ),
          const Gap(40),
          SizedBox(
            width: 500,
            child: Image.asset('power/meter5.jpg'),
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
    );
  }
}
