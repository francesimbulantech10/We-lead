import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Woltmansection extends StatefulWidget {
  const Woltmansection({super.key});

  @override
  State<Woltmansection> createState() => _Woltmansection();
}

class _Woltmansection extends State<Woltmansection> {
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
    "Horizontal Woltmann Dry Dial Bulk Water Meter",
    "LXL-50E~LXL-200E",
    "Measuring the volume of cold potable water passing through the pipeline",
    "Big circulation capacity, low head loss; register sealed in vacuum, anti-condensation atomization proof, enables clear reading; detachable, easy maintenance.",
    "ISO4064-1~3:2005",
    "Water Temperature – 0.1C – 50C Working Pressure – 1.0Mpa/1.6Mpa Head Loss – 0.063Mpa Max. Permissive Error – maximum permissible error: upper zone (Q2<Q<Q4) ,+2%;low zone (Q1<Q<Q2), + +5%",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: 2400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List of titles and descriptions
              const SizedBox(
                child: Text('HORIZONTAL WOLTMANN DRY DIAL BULK WATER METER',
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: Image.asset('water/installation&weight.jpg'),
                  ),
                ],
              ),

              // Single Button after the list
              ButtonWidget(
                title: 'Back to water',
                action: () {
                  String route = '/water'; // Use your desired route
                  context.go(route);
                },
                bgColor: Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 100),
          SizedBox(
            width: 500,
            child: Image.asset('water/water3.jpg'),
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
