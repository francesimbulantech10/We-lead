import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:first_web/widgets/auto_size_inter_text.dart';

class AppBarDrawer extends StatefulWidget {
  // ignore: use_super_parameters
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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(0, 255, 255, 255),
      width: 200,
      child: Drawer(
        child: SafeArea(
          right: true,
          child: ListView(
            padding: EdgeInsets.zero,
            controller: ScrollController(),
            children: [
              Container(
                color: const Color(0xFF003B56),
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'We Lead',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
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
                fontWeight: FontWeight.bold, // Make Home bold
                color: Colors.black, // Set the text color to white
              ),
              const Text(
                'What we do',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              AppBarMenus(
                title: "Power",
                action: () {
                  context.go('/power');
                },
                isActive: activePage == "Power",
                fontWeight: FontWeight.normal, // Make Power normal
              ),
              AppBarMenus(
                title: "Water",
                action: () {
                  context.go('/water');
                },
                isActive: activePage == "Water",
                fontWeight: FontWeight.normal, // Make Water normal
              ),
              AppBarMenus(
                title: "Energy",
                action: () {
                  context.go('/energy');
                },
                isActive: activePage == "Energy",
                fontWeight: FontWeight.normal, // Make Energy normal
              ),
              AppBarMenus(
                title: "Ecommerce",
                action: () {
                  context.go('/ecommerce');
                },
                isActive: activePage == "Ecommerce",
                fontWeight: FontWeight.normal, // Make Ecommerce normal
              ),
              AppBarMenus(
                title: "Sourcing",
                action: () {
                  context.go('/sourcing');
                },
                isActive: activePage == "Sourcing",
                fontWeight: FontWeight.normal, // Make Sourcing normal
              ),
              AppBarMenus(
                title: "Software",
                action: () {
                  context.go('/software');
                },
                isActive: activePage == "Software",
                fontWeight: FontWeight.normal, // Make Software normal
              ),
              AppBarMenus(
                title: "Our Blog",
                action: () {
                  context.go('/our-blog');
                },
                isActive: activePage == "Our Blog",
                fontWeight: FontWeight.bold, // Make Our Blog normal
              ),
              AppBarMenus(
                title: "About us",
                action: () {
                  context.go('/about-us');
                },
                isActive: activePage == "About us",
                fontWeight: FontWeight.bold, // Make About Us normal
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
  final FontWeight fontWeight; // New parameter for font weight
  final Color color; // Define color properly

  const AppBarMenus({
    Key? key,
    required this.title,
    required this.action,
    this.isActive = false,
    this.fontWeight = FontWeight.normal, // Default to normal
    this.color = Colors.black, // Default color set to black
  }) : super(key: key); // Correct super constructor

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0), // Adjust vertical padding for alignment
      title: Container(
        alignment: Alignment.center, // Aligns text to the center
        child: Text(
          title, // Use the standard Text widget
          style: TextStyle(
            fontSize: 16.0, // Adjust font size as needed
            fontWeight: fontWeight, // Use the font weight parameter
            color: isActive
                ? Colors.black
                : color, // Change color based on isActive
          ),
        ),
      ),
      onTap: () {
        action(); // Call the action on tap
      },
    );
  }
}
