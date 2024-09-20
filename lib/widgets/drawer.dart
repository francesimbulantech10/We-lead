import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:first_web/widgets/auto_size_inter_text.dart';

class AppBarDrawer extends StatefulWidget {
  const AppBarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBarDrawer> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer> {
  List<String> page = [
    "Home",
    "Services",
    "Contact Us",
    "About Us",
    
  ];

  String activePage = "Home";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(0, 255, 255, 255),
      width: 250,
      child: Drawer(
        child: SafeArea(
          right: false,
          child: ListView(
            padding: EdgeInsets.zero,
            controller: ScrollController(),
            children: [
              Container(
                padding: const EdgeInsets.all(15),
              child: Image.asset('welead.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              AppBarMenus(
                title: "Home",
                action: () {
                  context.go('/');
                },
                isActive: activePage == "Home",
              ),
              AppBarMenus(
                title: "What we Do",
                action: () {
                  context.go('/what-we-do');
                },
                isActive: activePage == "What we Do",
              ),
             AppBarMenus(
                title: "Our Blog",
                action: () {
                  context.go('/our-blog');
                },
                isActive: activePage == "Our Blog",
              ),
              AppBarMenus(
                title: "About us",
                action: () {
                  context.go('/about-us');
                },
                isActive: activePage == "About us",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarMenus extends StatelessWidget {
  final String title;
  final VoidCallback action;
  final bool isActive;
  const AppBarMenus({
    super.key,
    required this.title,
    required this.action,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return ListTile(
      title: AutoSizeInterText(
        text: title,
        fw: isActive ? FontWeight.bold : FontWeight.normal,
      ),
      onTap: () {
        action();
      },
    );
  }
}
