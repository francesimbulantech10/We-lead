import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class Unleashingsection extends StatefulWidget {
  const Unleashingsection({super.key});

  @override
  State<Unleashingsection> createState() => _Unleashingsection();
}

class _Unleashingsection extends State<Unleashingsection> {
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
        height: 1300,
        child: Column(
          children: [
            // SizedBox(
            //     width: size.width,
            //     height: 300,
            //     child: Image.asset(
            //       'our-blogs/unleashing.jpg',
            //       fit: BoxFit.cover,
            //     )),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 920,
                  height: 400,
                  child: Image.asset(
                    'unleashing/unleashing1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 920,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Gap(20),
                  const Text(
                    'Unlocking the Market Value of Filipino-Made Local Products for Export',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Gap(50),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 920,
                        child: Text(
                          'Cultural Authenticity and Unique Appeal:',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const Gap(50),
                  const Text(
                    'Step into the world of international sourcing with GlobalANTicipations Hub, where innovation meets the global marketplace, fueled by the power of ANTS Sourcing. Embracing the mantra of "We Lead, We Source," our platform becomes the driving force for Philippine businesses seeking boundless opportunities.\n\n'
                    'ANTS Sourcing offers a bespoke global reach, enhances efficiency in sourcing processes, and establishes a gold standard for security and trust. Delve into diverse markets, build supplier confidence, navigate regulatory landscapes, and bridge cultures seamlessly. Explore the transformative possibilities at www.weleadants.com and witness how we turn global reach into a strategic advantage.\n\n'
                    'Join the global revolution with us – this isn\'t just a sourcing journey; it\'s an extraordinary adventure. Contact us today and let\'s unleash your global potential together!',
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
                                text: 'Ants',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18 // Link color
                                    // Removed underline decoration
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    const url =
                                        'https://www.facebook.com/profile.php?id=100095244557812';
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
                                text: 'WeLeadAnts',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue, // Link color
                                  // Removed underline decoration
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    const url = 'https://weleadants.com/';
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
                          bgColor: Colors.blue,
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
    );
  }
}
