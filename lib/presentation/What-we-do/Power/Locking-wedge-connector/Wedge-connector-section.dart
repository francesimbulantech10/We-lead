import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Wedgeconnectorsection extends StatefulWidget {
  const Wedgeconnectorsection({super.key});

  @override
  State<Wedgeconnectorsection> createState() => _Wedgeconnectorsection();
}

class _Wedgeconnectorsection extends State<Wedgeconnectorsection> {
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
    "WLP SELF LOCKING WEDGE CONNECTOR",
    "Elastic C-type component:",
    "Easy to install",
  ];

  List<String> description = [
    "WLP self-locking wedge connectors consist of “C-spring” component, which is made of top-quality aluminum alloys and wedge block with exclusive patent technology, extensively applied to connections between aluminum and steel-cored stranded conductors, and connections between aluminum and copper stranded wires.WLP self-lock wedge wire connector is developed by American and Chinese local experts. It can not only guarantee the safe and reliable operation, but also maximally reduce the number of models in use because of wider range of wire sizes that single wedge connector can be applied to",
    "Special material formula (patent) and processing techniques bring WLP “C-type” component a good elasticity, combining the design of wedge pressure technology, a “Coordinated Breathe” connecting system is created, which effectively eliminates the phenomenon of “burning clamps” resulted from thermal expansion and contraction or bad contact.",
    "Just by knocking by hammer without shotgun, it is the fastest installation method in comparison with others, also according with mounting habits of workers. Especially under the hot-line working environment, workers’ contact time with electrified conductor will be reduced dramatically, which greatly improves the safety of workers.",
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
                      'power/meter3.jpg',
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
    "WLP SELF LOCKING WEDGE CONNECTOR",
    "Elastic C-type component:",
    "Easy to install",
  ];

  List<String> description = [
    "WLP self-locking wedge connectors consist of “C-spring” component, which is made of top-quality aluminum alloys and wedge block with exclusive patent technology, extensively applied to connections between aluminum and steel-cored stranded conductors, and connections between aluminum and copper stranded wires.WLP self-lock wedge wire connector is developed by American and Chinese local experts. It can not only guarantee the safe and reliable operation, but also maximally reduce the number of models in use because of wider range of wire sizes that single wedge connector can be applied to",
    "Special material formula (patent) and processing techniques bring WLP “C-type” component a good elasticity, combining the design of wedge pressure technology, a “Coordinated Breathe” connecting system is created, which effectively eliminates the phenomenon of “burning clamps” resulted from thermal expansion and contraction or bad contact.",
    "Just by knocking by hammer without shotgun, it is the fastest installation method in comparison with others, also according with mounting habits of workers. Especially under the hot-line working environment, workers’ contact time with electrified conductor will be reduced dramatically, which greatly improves the safety of workers.",
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
              'power/meter3.jpg',
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
