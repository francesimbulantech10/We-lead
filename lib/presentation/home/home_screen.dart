import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:first_web/presentation/home/home_section.dart';
import 'package:first_web/widgets/footer.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          preferredSize: Size(size.height , 75,), child: const SampleAppBar()),
      endDrawer: const AppBarDrawer(),
      body: Stack(
        children: [
        
          SingleChildScrollView(
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
                      //Purpose of this is still display the class in home section
                      
                      HomeSection(),
                      Gap(50),
                      FooterSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
