import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:gap/gap.dart';
// import 'package:go_router/go_router.dart';

class WhatWeDoSection extends StatefulWidget {
  const WhatWeDoSection({super.key});

  @override
  State<WhatWeDoSection> createState() => _WhatWeDoSection();
}

class _WhatWeDoSection extends State<WhatWeDoSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1525) {
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

//web display
class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      width: size.width,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            height: 1000,
            width: size.width,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: size.width,
                      child: Image.asset(
                        "assets/pamilya.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Container(
                    //   height: 300,
                    //   child: const Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       SizedBox(
                    //         height: 100,
                    //       ),
                    //       Text(
                    //         "Sample Description",
                    //         style: TextStyle(fontSize: 40),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
                // InkWell(
                //   onTap: () {
                //     //proper redirection syntax
                //     context.go("/what-we-do");
                //   },
                //   child: Container(
                //     width: 300,
                //     height: 400,
                //     padding: const EdgeInsets.all(8),
                //     decoration: BoxDecoration(
                //       border: Border.all(width: 0.5, color: Colors.black),
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         SizedBox(
                //           height: 200,
                //           child: Image.asset(
                //             "assets/welead.png",
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //         const Gap(20),
                //         const Text(
                //           "Sample",
                //           style: TextStyle(fontSize: 30),
                //         ),
                //         const Gap(20),
                //         const Text(
                //           "Sample",
                //           style: TextStyle(fontSize: 15),
                //         ),
                //       ],
                //     ),
                //   ),
                // )
              ],
            ),
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: size.width,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            height: 1000,
            width: size.width,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: size.width,
                      child: Image.asset(
                        "assets/pamilya.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
