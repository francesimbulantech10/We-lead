import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gap/gap.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1321) {
          return const WebView(); // Desktop view for wide screens
        } else if (constraints.maxWidth > 695) {
          return const TabletView(); // Tablet view for medium screens
        } else {
          return const MobileView(); // Mobile view for narrow screens
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
      color: const Color(0xFF003B56),
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Office',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                Gap(20),
                Text(
                  'Unit 2102 Galleria Corporate Center,',
                  style: TextStyle(color: Colors.white),
                ),
                Gap(10),
                Text(
                  'Edsa Corner Ortigas Ave., QC.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hours',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
                Gap(20),
                Text(
                  'M-F: 9:00 am – 6::00 pm',
                  style: TextStyle(color: Colors.white),
                ),
                Gap(10),
                Text(
                  'Sat-Sun: Closed',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Email Address',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
                const Gap(20),
                InkWell(
                  onTap: () async {
                    final Uri emailUri = Uri(
                      scheme: 'mailto',
                      path: 'comtech@weleadgroup.com',
                    );
                    if (await canLaunchUrl(emailUri)) {
                      await launchUrl(emailUri);
                    } else {
                      throw 'Could not launch $emailUri';
                    }
                  },
                  child: const Text(
                    'comtech@weleadgroup.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Call Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(20),
                InkWell(
                    onTap: () async {
                      final Uri phoneUri = Uri(
                        scheme: 'tel',
                        path: '02 8570 3260',
                      );
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        throw 'Could not launch $phoneUri';
                      }
                    },
                    child: const Text(
                      'Call Us (02) 8570 326059',
                      style: TextStyle(color: Colors.white),
                    )),
                const Gap(10),
                InkWell(
                    onTap: () async {
                      final Uri phoneUri = Uri(
                        scheme: 'tel',
                        path: '09189160459',
                      );
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        throw 'Could not launch $phoneUri';
                      }
                    },
                    child: const Text(
                      '09189160459',
                      style: TextStyle(color: Colors.white),
                    )),
                const Gap(50),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.white),
                  onPressed: () async {
                    const url = 'https://www.facebook.com/WeLeadComtech';
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ],
            ),
            const Row(
              children: [
                Text('© 2023 by We Lead Commerce and Technology',
                    style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Tablet view
//Tablet view
//Tablet view
//Tablet view

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletView();
}

class _TabletView extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      color: const Color(0xFF003B56),
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Office',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                Gap(20),
                Text(
                  'Unit 2102 Galleria Corporate Center,',
                  style: TextStyle(color: Colors.white),
                ),
                Gap(10),
                Text(
                  'Edsa Corner Ortigas Ave., QC.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hours',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
                Gap(20),
                Text(
                  'M-F: 9:00 am – 6::00 pm',
                  style: TextStyle(color: Colors.white),
                ),
                Gap(10),
                Text(
                  'Sat-Sun: Closed',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Email Address',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
                const Gap(20),
                InkWell(
                  onTap: () async {
                    final Uri emailUri = Uri(
                      scheme: 'mailto',
                      path: 'comtech@weleadgroup.com',
                    );
                    if (await canLaunchUrl(emailUri)) {
                      await launchUrl(emailUri);
                    } else {
                      throw 'Could not launch $emailUri';
                    }
                  },
                  child: const Text(
                    'comtech@weleadgroup.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Call Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(20),
                InkWell(
                    onTap: () async {
                      final Uri phoneUri = Uri(
                        scheme: 'tel',
                        path: '02 8570 3260',
                      );
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        throw 'Could not launch $phoneUri';
                      }
                    },
                    child: const Text(
                      'Call Us (02) 8570 326059',
                      style: TextStyle(color: Colors.white),
                    )),
                const Gap(10),
                InkWell(
                    onTap: () async {
                      final Uri phoneUri = Uri(
                        scheme: 'tel',
                        path: '09189160459',
                      );
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        throw 'Could not launch $phoneUri';
                      }
                    },
                    child: const Text(
                      '09189160459',
                      style: TextStyle(color: Colors.white),
                    )),
                const Gap(50),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.white),
                  onPressed: () async {
                    const url = 'https://www.facebook.com/WeLeadComtech';
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ],
            ),
            const Row(
              children: [
                Text('© 2023 by We Lead Commerce and Technology',
                    style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Mobile View
//Mobile View
//Mobile View
//Mobile View
//Mobile View
//Mobile View

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: const Color(0xFF003B56),
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Wrap(
          runSpacing: 30,
          alignment: WrapAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Office',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                Gap(20),
                Text(
                  'Unit 2102 Galleria Corporate Center,',
                  style: TextStyle(color: Colors.white),
                ),
                Gap(10),
                Text(
                  'Edsa Corner Ortigas Ave., QC.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hours',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
                Gap(20),
                Text(
                  'M-F: 9:00 am – 6::00 pm',
                  style: TextStyle(color: Colors.white),
                ),
                Gap(10),
                Text(
                  'Sat-Sun: Closed',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Email Address',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
                const Gap(20),
                InkWell(
                  onTap: () async {
                    final Uri emailUri = Uri(
                      scheme: 'mailto',
                      path: 'comtech@weleadgroup.com',
                    );
                    if (await canLaunchUrl(emailUri)) {
                      await launchUrl(emailUri);
                    } else {
                      throw 'Could not launch $emailUri';
                    }
                  },
                  child: const Text(
                    'comtech@weleadgroup.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Call Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(20),
                InkWell(
                    onTap: () async {
                      final Uri phoneUri = Uri(
                        scheme: 'tel',
                        path: '02 8570 3260',
                      );
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        throw 'Could not launch $phoneUri';
                      }
                    },
                    child: const Text(
                      'Call Us (02) 8570 326059',
                      style: TextStyle(color: Colors.white),
                    )),
                const Gap(10),
                InkWell(
                    onTap: () async {
                      final Uri phoneUri = Uri(
                        scheme: 'tel',
                        path: '09189160459',
                      );
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        throw 'Could not launch $phoneUri';
                      }
                    },
                    child: const Text(
                      '09189160459',
                      style: TextStyle(color: Colors.white),
                    )),
                const Gap(50),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.white),
                  onPressed: () async {
                    const url = 'https://www.facebook.com/WeLeadComtech';
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ],
            ),
            const Column(
              children: [
                Text('© 2023 by We Lead Commerce and Technology',
                    style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
