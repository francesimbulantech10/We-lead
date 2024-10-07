import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class Watthoursection extends StatefulWidget {
  const Watthoursection({super.key});

  @override
  State<Watthoursection> createState() => _Watthoursection();
}

class _Watthoursection extends State<Watthoursection> {
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
        width: size.width,
        height: 1100,
        child: Column(
          children: [
            SizedBox(
                width: size.width,
                height: 400,
                child: Image.asset(
                  'main-our-blog/electricM.jpg',
                  fit: BoxFit.cover,
                )),
            const Gap(80),
            SizedBox(
              width: 1000,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: Image.asset(
                      'watthour/watthour1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Gap(50),
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: Image.asset(
                      'watthour/watthour2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            const SizedBox(
              width: 1000,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Watthour Meter Implemented in North and Central Luzon',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Gap(50),
                  Text(
                    'Since 2014, more than 100,000 pcs WLP Watthour Meters Implemented in North and Central Luzon',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const Gap(20),
            SizedBox(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Please visit us at.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Facebook Page: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18), // Normal text color
                      ),
                      TextSpan(
                        text: 'We Lead Comtech',
                        style: const TextStyle(
                            color: Colors.blue, // Link color
                            fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            const url =
                                'https://www.facebook.com/WeLeadComtech';
                            // ignore: deprecated_member_use
                            if (await canLaunch(url)) {
                              // ignore: deprecated_member_use
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 1000),
                const Gap(20),
                ButtonWidget(
                  title: 'See more blogs',
                  action: () {
                    String route = '/our-blog'; // Use your desired route
                    context.go(route);
                  },
                  bgColor: const Color.fromARGB(255, 255, 102, 0),
                ),
              ],
            )),
          ],
        ));
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
        child: Column(
          children: [
            SizedBox(
                width: size.width,
                height: 400,
                child: Image.asset(
                  'main-our-blog/electricM.jpg',
                  fit: BoxFit.cover,
                )),
            const Gap(80),
            SizedBox(
              width: 1000,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: Image.asset(
                      'watthour/watthour1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Gap(50),
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: Image.asset(
                      'watthour/watthour2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            const SizedBox(
              width: 500,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Watthour Meter Implemented in North and Central Luzon',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Gap(50),
                    Text(
                      'Since 2014, more than 100,000 pcs WLP Watthour Meters Implemented in North and Central Luzon',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(20),
            SizedBox(
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Please visit us at.',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Facebook Page: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18), // Normal text color
                            ),
                            TextSpan(
                              text: 'We Lead Comtech',
                              style: const TextStyle(
                                  color: Color.fromARGB(
                                      255, 255, 102, 0), // Link color
                                  fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  const url =
                                      'https://www.facebook.com/WeLeadComtech';
                                  // ignore: deprecated_member_use
                                  if (await canLaunch(url)) {
                                    // ignore: deprecated_member_use
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 1000),
                      const Gap(20),
                      ButtonWidget(
                        title: 'See more blogs',
                        action: () {
                          String route = '/our-blog'; // Use your desired route
                          context.go(route);
                        },
                        bgColor: const Color.fromARGB(255, 255, 102, 0),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
