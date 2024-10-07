import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Solarsection extends StatefulWidget {
  const Solarsection({super.key});

  @override
  State<Solarsection> createState() => _Solarsection();
}

class _Solarsection extends State<Solarsection> {
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
      // Adjusted height to be dynamic
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 400,
            child: Image.asset(
              'main-our-blog/electricM.jpg',
              fit: BoxFit.cover,
            ),
          ),
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
                    'solar/solar1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Gap(50),
                SizedBox(
                  width: 200,
                  height: 300,
                  child: Image.asset(
                    'solar/solar2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          SizedBox(
            width: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '10KW off grid solar system in Pampanga, Philippines',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Gap(50),
                const Text(
                  '10 KW off grid solar system is implemented in Pampanga, Philippines in 2015.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                ),
                const Gap(50),
                const Text(
                  'Since 2014, more than 100,000 pcs WLP Watthour Meters Implemented in North and Central Luzon',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                ),
                const Gap(50),
                const Text('The system includes:'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var text in [
                      '40 pcs 250W solar panel',
                      '1 pc 10KW inverter integrate with Controller',
                      '1 pc 10KW AC distribution cabinet',
                      '1 pc PV combiner box',
                      '16 pcs 12V 200ah Battery',
                    ])
                      Text(
                        text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 18),
                      ),
                  ],
                ),
                const Gap(30),
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
      // Adjusted height to be dynamic
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 350,
            child: Image.asset(
              'solar/solarbg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Gap(80),
          SizedBox(
            width: size.width * .5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 300,
                  child: Image.asset(
                    'solar/solar1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Gap(50),
                SizedBox(
                  width: 200,
                  height: 300,
                  child: Image.asset(
                    'solar/solar2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          SizedBox(
            width: size.width * .7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '10KW off grid solar system in Pampanga, Philippines',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Gap(50),
                const Text(
                  '10 KW off grid solar system is implemented in Pampanga, Philippines in 2015.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                ),
                const Gap(50),
                const Text(
                  'Since 2014, more than 100,000 pcs WLP Watthour Meters Implemented in North and Central Luzon',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                ),
                const Gap(50),
                const Text('The system includes:'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var text in [
                      '40 pcs 250W solar panel',
                      '1 pc 10KW inverter integrate with Controller',
                      '1 pc 10KW AC distribution cabinet',
                      '1 pc PV combiner box',
                      '16 pcs 12V 200ah Battery',
                    ])
                      Text(
                        text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 18),
                      ),
                  ],
                ),
                const Gap(30),
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
          ),
        ],
      ),
    );
  }
}
