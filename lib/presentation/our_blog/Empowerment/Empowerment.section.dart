// ignore_for_file: deprecated_member_use

import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class Empowermentsection extends StatefulWidget {
  const Empowermentsection({super.key});

  @override
  State<Empowermentsection> createState() => _Empowermentsection();
}

class _Empowermentsection extends State<Empowermentsection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
          if (constraints.maxWidth > 1274) {
          return const WebView();
        } else {
          return const MobileView();
        }
      }
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
        child: Column(
          children: [
            SizedBox(
                width: size.width,
                height: 300,
                child: Image.asset(
                  'empowerment/empowermentoppic.jpg',
                  fit: BoxFit.cover,
                )),
            const Gap(30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * .75,
                  height: 400,
                  child: Image.asset(
                    'empowerment/empowerment1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: size.width * .75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(20),
                  const Text(
                    'Empowerment Through Tourism: A Transformative Journey of Growth and Connection',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Gap(50),
                  const Text(
                    'Tourism has the remarkable ability to inject life into local economies. When travelers explore new destinations, they create demand for accommodations, dining, transportation, and cultural experiences. Local businesses, from street vendors to boutique shops, benefit from this influx of visitors, generating income and supporting job opportunities within the community. Through tourism, communities gain the means to invest in infrastructure, education, and other essential services, leading to long-term economic growth.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18),
                  ),
                  const Gap(20),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Please visit us at.'),
                        const Gap(20),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Facebook Page: ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black), // Normal text color
                              ),
                              TextSpan(
                                text: 'Pamilya.com.ph',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18 // Link color
                                    // Removed underline decoration
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    const url =
                                        'https://www.facebook.com/pamilya.com.ph';
                                    // ignore: duplicate_ignore
                                    // ignore: deprecated_member_use
                                    if (await canLaunch(url)) {
                                      // ignore: duplicate_ignore
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
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Website: ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black), // Normal text color
                              ),
                              TextSpan(
                                text: 'Pamilya Website',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue, // Link color
                                  // Removed underline decoration
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    const url = 'https://pamilya.com.ph/';
                                    // ignore: duplicate_ignore
                                    // ignore: deprecated_member_use
                                    if (await canLaunch(url)) {
                                      // ignore: duplicate_ignore
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
                        const SizedBox(
                          width: 1000,
                        ),
                        const Gap(20),
                        ButtonWidget(
                          title: 'See more blogs',
                          action: () {
                            String route =
                                '/our-blog'; // Use your desired route
                            context.go(route);
                          },
                          bgColor: const Color.fromARGB(255, 255, 102, 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: size.width,
                height: 300,
                child: Image.asset(
                  'empowerment/empowermentoppic.jpg',
                  fit: BoxFit.cover,
                )),
            const Gap(50),
            SizedBox(
              width: size.width * .8,
              height: 400,
              child: Image.asset(
                'empowerment/empowerment1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: size.width * .8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(20),
                  const Text(
                    'Empowerment Through Tourism: A Transformative Journey of Growth and Connection',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Gap(50),
                  const Text(
                    'Tourism has the remarkable ability to inject life into local economies. When travelers explore new destinations, they create demand for accommodations, dining, transportation, and cultural experiences. Local businesses, from street vendors to boutique shops, benefit from this influx of visitors, generating income and supporting job opportunities within the community. Through tourism, communities gain the means to invest in infrastructure, education, and other essential services, leading to long-term economic growth.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18),
                  ),
                  const Gap(20),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Please visit us at.'),
                        const Gap(20),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Facebook Page: ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black), // Normal text color
                              ),
                              TextSpan(
                                text: 'Pamilya.com.ph',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18 // Link color
                                    // Removed underline decoration
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    const url =
                                        'https://www.facebook.com/pamilya.com.ph';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Website: ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black), // Normal text color
                              ),
                              TextSpan(
                                text: 'Pamilya Website',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue, // Link color
                                  // Removed underline decoration
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    const url = 'https://pamilya.com.ph/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 1000,
                        ),
                        const Gap(20),
                        ButtonWidget(
                          title: 'See more blogs',
                          action: () {
                            String route =
                                '/our-blog'; // Use your desired route
                            context.go(route);
                          },
                          bgColor: const Color.fromARGB(255, 255, 102, 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
