import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Fusesection extends StatefulWidget {
  const Fusesection({super.key});

  @override
  State<Fusesection> createState() => _Fusesection();
}

class _Fusesection extends State<Fusesection> {
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
    "Distribution Fuse cutout",
    "Basic Specifications",
    "Standards",
    "Types",
  ];

  List<String> description = [
    "A fuse cutout or cut-out fuse is a combination of a fuse and a switch, used in primary overhead feeder lines and taps to protect distribution transformers from current surges and overloads",
    "Model : MTFP – 15/100 Rated Maximum Voltage : 15Kv Rated Continues Current Rated Frequency : 50Hz/60Hz Weight : Approx 6.4Kg",
    "ANSI 37.42",
    "ANSI 37.42",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: 1100,
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
            child: Image.asset('power/meter4.jpg'),
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
