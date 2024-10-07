// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Energysection extends StatefulWidget {
  const Energysection({super.key});

  @override
  State<Energysection> createState() => _Energysection();
}

class _Energysection extends State<Energysection> {
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
              height: 500,
              child: Image.asset(
                'solar/solarbg.JPG',
                fit: BoxFit.cover,
              ),
            ),
            const Gap(50),
            SizedBox(
              width: size.width * .65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * .65,
                    height: 300,
                    child: Image.asset(
                      'Energy/ENERGYBODY1.JPG',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Gap(50),
                  SizedBox(
                    width: size.width * .65,
                    child: const Column(
                      children: [
                        Text(
                          'Solar Renaissance Pioneering a Sustainable Energy Future',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Gap(30),
                        Text(
                          'Solar energy, tapping into the boundless power of the sun, is revolutionizing the way we generate electricity for homes and businesses. Through advanced photovoltaic technology, solar panels convert sunlight into clean, sustainable energy, offering an eco-friendly alternative to finite fossil fuels. This shift not only reduces carbon emissions but also promotes energy independence and cost savings for homeowners. Businesses, too, are recognizing the environmental and corporate benefits, supported by government incentives worldwide. As solar technology advances, it symbolizes a transformative journey towards a more sustainable and resilient energy future.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
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
          children: [
            SizedBox(
              width: size.width,
              height: 500,
              child: Image.asset(
                'solar/solarbg.JPG',
                fit: BoxFit.cover,
              ),
            ),
            const Gap(50),
            SizedBox(
              width: size.width * .75,
              height: 300,
              child: Image.asset(
                'Energy/ENERGYBODY1.JPG',
                fit: BoxFit.cover,
              ),
            ),
            const Gap(50),
            SizedBox(
              width: size.width * .65,
              child: const Column(
                children: [
                  Text(
                    'Solar Renaissance Pioneering a Sustainable Energy Future',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Gap(30),
                  Text(
                    'Solar energy, tapping into the boundless power of the sun, is revolutionizing the way we generate electricity for homes and businesses. Through advanced photovoltaic technology, solar panels convert sunlight into clean, sustainable energy, offering an eco-friendly alternative to finite fossil fuels. This shift not only reduces carbon emissions but also promotes energy independence and cost savings for homeowners. Businesses, too, are recognizing the environmental and corporate benefits, supported by government incentives worldwide. As solar technology advances, it symbolizes a transformative journey towards a more sustainable and resilient energy future.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
