import 'package:first_web/presentation/What-we-do/Power/Hour-meter/hour_meter_section.dart';
import 'package:first_web/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gap/gap.dart';
import '../../../../widgets/appbar.dart';
import '../../../../widgets/drawer.dart';

// ignore: camel_case_types
class hourmeterscreen extends StatefulWidget {
  const hourmeterscreen({super.key});

  @override
  State<hourmeterscreen> createState() => _hourmeterscreen();
}

// ignore: camel_case_types
class _hourmeterscreen extends State<hourmeterscreen> {
  bool showAppbar = false;
  late final ScrollController scrollController;
  final itemKey = GlobalKey();
  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      scrollController.addListener(() {
        if (scrollController.offset >=
            MediaQuery.of(context).size.height * .1) {
          setState(() {
            showAppbar = true;
          });
        } else if (scrollController.offset <
                MediaQuery.of(context).size.height &&
            showAppbar) {
          setState(() {
            showAppbar = false;
          });
        }
      });
    });
  }

  Future scrollToItem() async {
    final context = itemKey.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: const Duration(milliseconds: 800));
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gap(30),
                  Hourmetersection(),
                  Gap(200),
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
