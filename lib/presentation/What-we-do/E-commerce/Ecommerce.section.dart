
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class Ecommercesection extends StatefulWidget {
  const Ecommercesection({super.key});

  @override
  State<Ecommercesection> createState() => _Ecommercesection();
}

class _Ecommercesection extends State<Ecommercesection> {
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
            SizedBox(
              width: 950,
              height: 500,
              child: Image.asset('pamilya.png'),
            ),
            const Gap(20),
            const SizedBox(
              width: 1000,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'CONNECTING BUSINESSES, BOOSTING PROFITS: THE B2B MARKETPLACE CHRONICLES',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Gap(50),
                  Text(
                    'B2B e-COMMERCE We offer a digital marketplace where consumers and merchants can connect, buy, and sell from each other whether products or services. We offer all of these through our flagship e-Commerce platform called Pamilya.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18),
                  ),
                
                ],
              ),
            ),
            const Gap(20),
              const SizedBox(
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Please visit us at.'),
                        Text('Facebook Page: Pamilya.com.ph'),
                        Text('Website: Pamilya.com.ph'),
                      SizedBox(width:1000,),
                       
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
