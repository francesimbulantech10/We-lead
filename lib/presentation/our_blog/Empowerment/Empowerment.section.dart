import 'package:first_web/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';


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
        width: 950,
        height: size.height,
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('Welead1.jpg'),
                ),
                 SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('Welead1.jpg'),
            ),
              ],
            ),
           
            const Gap(20),
            const SizedBox(
              width: 1000,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(20),
                  Text(
                    'Watthour Meter Implemented in North and Central Luzon',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Gap(50),
                  Text(
                    'Since 2014, more than 100,000 pcs WLP Watthour Meters Implemented in North and Central Luzon',
                    textAlign: TextAlign.justify,
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
                  Text('Please visit us at.'),
                  Text('Facebook Page: We Lead Ants'),
                  SizedBox(
                    width: 1000,
                  ),
                  Gap(20),
                  ButtonWidget(
                    title: 'Back',
                    action: () {
                      // Set a single route
                      String route = '/our-blog'; // Use your desired route

                      // Navigate to the route
                      context.go(route);
                    },
                    bgColor: Colors.blue,
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
    return SizedBox();
  }
}
