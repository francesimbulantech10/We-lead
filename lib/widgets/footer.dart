import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:first_web/widgets/auto_size_inter_text.dart';

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
                  onTap: () {}, child: const AutoSizeInterText(text: "Unit 2102 Galleria Corporate Center,")),
              const Gap(10),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "Edsa Corner Ortigas Ave., QC.")),
             
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Hours"),
              const Gap(20),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "M-F: 9:00 am – 6::00 pm")),
              const Gap(10),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "Sat-Sun: Closed")),
              
            
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Email Address"),
              const Gap(20),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "comtech@weleadgroup.com")),
          
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Call Us"),
              const Gap(20),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "Call Us (02) 8570 3260")),
              const Gap(10),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "09189160459")),
             
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
                  onTap: () {}, child: const AutoSizeInterText(text: "Unit 2102 Galleria Corporate Center,")),
              const Gap(10),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "Edsa Corner Ortigas Ave., QC.")),
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
                  onTap: () {}, child: const AutoSizeInterText(text: "Mon-Fri: 9:00 am – 6::00 pm")),
              const Gap(10),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "Sat-Sun: Closed")),
              
            
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Email Address"),
              const Gap(20),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "comtech@weleadgroup.com")),
          
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeInterText(text: "Call Us"),
              const Gap(20),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "Call Us (02) 8570 3260")),
              const Gap(10),
              InkWell(
                  onTap: () {}, child: const AutoSizeInterText(text: "09189160459")),
             
            ],
          )
        ],
      ),
    );
  }
}
