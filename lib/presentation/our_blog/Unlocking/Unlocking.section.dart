import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class Unlockingsection extends StatefulWidget {
  const Unlockingsection({super.key});

  @override
  State<Unlockingsection> createState() => _Unlockingsection();
}

class _Unlockingsection extends State<Unlockingsection> {
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
        child: Column(
          children: [
            SizedBox(
                width: size.width,
                height: 300,
                child: Image.asset(
                  'unlocking/unlocking2.jpg',
                  fit: BoxFit.cover,
                )),
            const Gap(30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 920,
                  height: 400,
                  child: Image.asset(
                    'unlocking/unlocking1.jpg',
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
                    'Cultural Authenticity and Unique Appeal: Filipino-made local products possess a distinct charm that stems from the countrys vibrant cultural heritage. From traditional handicrafts and textiles to homegrown food products and fashion accessories, these goods encapsulate the essence of Filipino craftsmanship and creativity. International consumers are increasingly drawn to products that tell a story and offer an authentic experience, making Filipino-made local products highly sought-after in the global market.',
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
                  'unlocking/unlocking2.jpg',
                  fit: BoxFit.cover,
                )),
            const Gap(30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * .8,
                  height: 400,
                  child: Image.asset(
                    'unlocking/unlocking1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: size.width * .8,
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
                    'Cultural Authenticity and Unique Appeal: Filipino-made local products possess a distinct charm that stems from the countrys vibrant cultural heritage. From traditional handicrafts and textiles to homegrown food products and fashion accessories, these goods encapsulate the essence of Filipino craftsmanship and creativity. International consumers are increasingly drawn to products that tell a story and offer an authentic experience, making Filipino-made local products highly sought-after in the global market.',
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
