import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gap/gap.dart';
import 'package:first_web/widgets/auto_size_inter_text.dart';
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
        if (constraints.maxWidth > 1025) {
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      color: const Color.fromARGB(255, 0, 145, 255),
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 350),
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
              ],
            ),
            
            Row(
              children: [
                const Text('© 2023 by We Lead Commerce and Technology',style: TextStyle(color: Colors.white)),
                const SizedBox(
                  width: 700,
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                  onPressed: () async {
                    const url = 'https://www.facebook.com/WeLeadComtech';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ],
            )
          ],
        ),
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      color: const Color.fromARGB(255, 0, 145, 255),
      width: size.width,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Office"),
              const Gap(20),
              InkWell(
                  onTap: () {},
                  child: const AutoSizeInterText(
                      text: "Unit 2102 Galleria Corporate Center,")),
              const Gap(10),
              InkWell(
                  onTap: () {},
                  child: const AutoSizeInterText(
                      text: "Edsa Corner Ortigas Ave., QC.")),
              const Gap(20),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Hours"),
              const Gap(10),
              InkWell(
                  onTap: () {},
                  child: const AutoSizeInterText(
                      text: "Mon-Fri: 9:00 am – 6::00 pm")),
              const Gap(10),
              InkWell(
                  onTap: () {},
                  child: const AutoSizeInterText(text: "Sat-Sun: Closed")),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Email Address"),
              const Gap(20),
              InkWell(
                  onTap: () {},
                  child:
                      const AutoSizeInterText(text: "comtech@weleadgroup.com")),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Call Us"),
              const Gap(20),
              InkWell(
                  onTap: () {},
                  child:
                      const AutoSizeInterText(text: "Call Us (02) 8570 3260")),
              const Gap(10),
              InkWell(
                  onTap: () {},
                  child: const AutoSizeInterText(text: "09189160459")),
            ],
          ),
        ],
      ),
    );
  }
}
