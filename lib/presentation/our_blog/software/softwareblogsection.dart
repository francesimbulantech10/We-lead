import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class softwareblogsection extends StatefulWidget {
  const softwareblogsection({super.key});

  @override
  State<softwareblogsection> createState() => _softwareblogsection();
}

class _softwareblogsection extends State<softwareblogsection> {
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
  final List<String> links = [
    "softwaredev/campbenjamin.jpg",
    "softwaredev/campbenjamin2.jpg",
    "softwaredev/mons.jpg",
    "softwaredev/shalom.jpg",
    "softwaredev/ywav.jpg",
    "softwaredev/software-sanjuan.jpg",
    "softwaredev/pamilya.jpg",
    "softwaredev/ants.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            width: 800,
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 50,
              spacing:
                  20, // Adjust this value to set horizontal spacing between images
              children: List.generate(links.length, (index) {
                return SizedBox(
                  height: 150,
                  child: Image.asset(
                    links[index],
                    fit: BoxFit.cover,

                    // Adjust height to match the container
                  ),
                );
              }),
            ),
          ),
          const Gap(30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * .48,
                child: const Text(
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                    "Embracing Technological Advancements: The Role of Software Development in Our Services"),
              ),
              const Gap(30),
              SizedBox(
                width: size.width * .48,
                child: const Text(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                    "Software development is the cornerstone of Camp Benjamin's operational efficiency, powering seamless experiences across platforms like MONs, The Center, Shalom Hotel, YWAV, and Parebsjrb websites, as well as streamlining processes such as MONs POS, ensuring user-centric services and continual innovation."),
              )
            ],
          )
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
  final List<String> links = [
    "softwaredev/campbenjamin.jpg",
    "softwaredev/campbenjamin2.jpg",
    "softwaredev/mons.jpg",
    "softwaredev/shalom.jpg",
    "softwaredev/ywav.jpg",
    "softwaredev/software-sanjuan.jpg",
    "softwaredev/pamilya.jpg",
    "softwaredev/ants.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            width: 800,
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 50,
              spacing:
                  20, // Adjust this value to set horizontal spacing between images
              children: List.generate(links.length, (index) {
                return SizedBox(
                  height: 150,
                  child: Image.asset(
                    links[index],
                    fit: BoxFit.cover,

                    // Adjust height to match the container
                  ),
                );
              }),
            ),
          ),
          const Gap(30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * .58,
                child: const Text(
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                    "Embracing Technological Advancements: The Role of Software Development in Our Services"),
              ),
              const Gap(30),
              SizedBox(
                width: size.width * .58,
                child: const Text(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                    "Software development is the cornerstone of Camp Benjamin's operational efficiency, powering seamless experiences across platforms like MONs, The Center, Shalom Hotel, YWAV, and Parebsjrb websites, as well as streamlining processes such as MONs POS, ensuring user-centric services and continual innovation."),
              )
            ],
          )
        ],
      ),
    );
  }
}
