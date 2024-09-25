import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SampleAppBar extends StatelessWidget {
  const SampleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > 1100) {
          return const AppBar();
        } else {
          return const MobileAppBar();
        }
      }),
    );
  }
}

//App Bar for mobiles devices
class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    //  var size = MediaQuery.of(context).size;
    return Material(
      elevation: 0,
      color: const Color.fromARGB(0, 255, 255, 255),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromARGB(0, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 200,
              child: Text(
                'Welead',
                style: TextStyle(
                  fontSize: 40, // Adjust the font size
                  fontWeight: FontWeight.bold, // Font weight (bold)
                  fontFamily:
                      'YourCustomFont', // Set custom font family if needed
                  color: Color.fromARGB(255, 0, 0, 0), // Text color
                  letterSpacing: 2.0, // Space between letters
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 0),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: Icon(Icons.menu),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//App bar for the web
class AppBar extends StatefulWidget {
  const AppBar({super.key});

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      elevation: 0,
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Container(
        color: const Color.fromARGB(255, 0, 157, 255),
        width: double.infinity,
        alignment: Alignment.center,
        child: Container(
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  context.go('/');
                },
                child: SizedBox(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('welead.jpg'),
                  ),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      AppBarMenu(
                        title: 'Home',
                        action: () {
                          context.go('/');
                        },
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:
                              Color.fromARGB(255, 255, 255, 255), // Text color
                        ), // Apply custom style for 'Home'
                      ),
                      PopupMenuButton<String>(
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'What We Do',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        onSelected: (value) {
                          // Handle navigation based on the selection
                          switch (value) {
                            case 'Power':
                              context.go('/power');
                              break;
                            case 'Water':
                              context.go('/water');
                              break;
                            case 'Energy':
                              context.go('/energy');
                              break;
                            case 'Ecommerce':
                              context.go('/ecommerce');
                              break;
                            case 'Sourcing':
                              context.go('/sourcing');
                              break;
                            case 'Software':
                              context.go('/software');
                              break;
                          }
                        },
                        itemBuilder: (BuildContext context) {
                          return [
                            const PopupMenuItem<String>(
                              value: 'Power',
                              child: Text('Power'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Water',
                              child: Text('Water'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Energy',
                              child: Text('Energy'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Ecommerce',
                              child: Text('E-commerce'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Sourcing',
                              child: Text('Sourcing'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Software',
                              child: Text('Software development'),
                            ),
                          ];
                        },
                      ),
                      AppBarMenu(
                        title: 'Our Blog',
                        action: () {
                          context.go('/our-blog');
                        },
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:
                              Color.fromARGB(255, 255, 255, 255), // Text color
                        ), // Apply custom style for 'Home'
                      ),
                      AppBarMenu(
                        title: 'About us',
                        action: () {
                          context.go('/about-us');
                        },
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:
                              Color.fromARGB(255, 255, 255, 255), // Text color
                        ), // Apply custom style for 'Home'
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarMenu extends StatelessWidget {
  final String title;
  final VoidCallback action;
  final TextStyle? textStyle; // Add a textStyle parameter

  const AppBarMenu({
    super.key,
    required this.title,
    required this.action,
    this.textStyle, // Make the textStyle optional
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: action,
      child: SizedBox(
        height: 200,
        width: size.width > 1500 ? size.width * .08 : size.width * .08,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              title,
              maxLines: 1,
              style: textStyle ??
                  const TextStyle(
                      fontSize: 15), // Apply the textStyle if provided
            ),
          ),
        ),
      ),
    );
  }
}
