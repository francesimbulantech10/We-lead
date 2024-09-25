
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class Softwaresection extends StatefulWidget {
  const Softwaresection({super.key});

  @override
  State<Softwaresection> createState() => _Softwaresection();
}

class _Softwaresection extends State<Softwaresection> {
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
              child: Image.asset('Welead1.jpg'),
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
                    'Digital Transformation Pioneering Sustainability in Software Development',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Gap(50),
                  Text(
                    'We provide software application programs that will automate regular tasks that meets the specific needs of an individual or company. Among the products are Point of Sales (POS) for Gasoline stations, Supermarkets, Restaurants as well as Billing, Payroll, and Accounting Systems.',
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
                  Text('Facebook Page: We Lead Ants'),
                  Text('Website:We Lead Ants Website'),
                  SizedBox(
                    width: 1000,
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
