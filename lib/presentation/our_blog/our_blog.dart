
import 'package:first_web/presentation/our_blog/our_blog_section.dart';
import 'package:flutter/material.dart';


import 'package:first_web/widgets/footer.dart';

import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';

class OurBlogscreen extends StatefulWidget {
  const OurBlogscreen({super.key});
  @override
  State<OurBlogscreen> createState() => _OurBlogscreen();
}

class _OurBlogscreen extends State<OurBlogscreen> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBody: true,
      drawerEnableOpenDragGesture: false,
      drawerEdgeDragWidth: 0,
      endDrawerEnableOpenDragGesture: false,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: Size(size.width, 70), child: const SampleAppBar()),
      endDrawer: const AppBarDrawer(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  OurBlogSection(),
                  
                  FooterSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
