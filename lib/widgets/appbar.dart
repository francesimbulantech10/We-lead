import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SampleAppBar extends StatelessWidget {
  const SampleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > 1195) {
          return const AppBar(); // Desktop view for wide screens
        } else if (constraints.maxWidth > 695) {
          return const TabletAppBar(); // Tablet view for medium screens
        } else {
          return const MobileAppBar(); // Mobile view for narrow screens
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
    var size = MediaQuery.of(context).size;
    return Container(
      // Wrap the entire app bar in a Container to provide a solid background
      color: const Color(
          0xFFFFF3F8), // Apply the pink color to the entire app bar as the default
      child: Stack(
        children: [
          ClipPath(
            clipper:
                DiagonalClippermobile(), // Custom clipper for diagonal background
            child: Container(
              color: const Color(
                  0xFF003B56), // Dark blue color for the left section
              width:
                  size.width * 0.59, // Width adjusted for the blue background
            ),
          ),
          // Positioned pink container that covers the right section (no transparency)
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: size.width * 0.37, // Adjusted width for the right side
                color: const Color(
                    0xFFFFF3F8), // Opaque soft pink color for the right section
              ),
            ),
          ),
          // Text and icon on top of everything
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'We Lead',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // White text color for contrast
                      ),
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
                      child: Icon(Icons.menu,
                          color: Colors.black), // Black menu icon
                    ),
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

class DiagonalClippermobile extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Define the diagonal line for the left side
    path.lineTo(size.width * 0.74, 0); // Top-right point
    path.lineTo(size.width, size.height); // Bottom-right point
    path.lineTo(0, size.height); // Bottom-left point
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TabletAppBar extends StatelessWidget {
  const TabletAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // Wrap the entire app bar in a Container to provide a solid background
      color: const Color(
          0xFFFFF3F8), // Apply the pink color to the entire app bar as the default
      child: Stack(
        children: [
          ClipPath(
            clipper:
                DiagonalClippertablet(), // Custom clipper for diagonal background
            child: Container(
              color: const Color(
                  0xFF003B56), // Dark blue color for the left section
              width:
                  size.width * 0.39, // Width adjusted for the blue background
            ),
          ),
          // Positioned pink container that covers the right section (no transparency)
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: size.width * 0.25, // Adjusted width for the right side
                color: const Color(
                    0xFFFFF3F8), // Opaque soft pink color for the right section
              ),
            ),
          ),
          // Text and icon on top of everything
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'We Lead',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // White text color for contrast
                      ),
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
                      child: Icon(Icons.menu,
                          color: Colors.black), // Black menu icon
                    ),
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

class DiagonalClippertablet extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Define the diagonal line for the left side
    path.lineTo(size.width * 0.74, 0); // Top-right point
    path.lineTo(size.width, size.height); // Bottom-right point
    path.lineTo(0, size.height); // Bottom-left point
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
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
      child: SizedBox(
        height: 100, // Adjusted height to add blue color at the bottom
        child: Stack(
          children: [
            ClipPath(
              clipper:
                  DiagonalClipper(), // Custom clipper for diagonal background
              child: Container(
                color: const Color(0xFF003B56), // Dark blue color
                width:
                    size.width * 0.45, // Width adjusted for the blue background
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width:
                      size.width * 0.25, // Adjust width for the white section
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go('/');
                    },
                    child: const Text(
                      'We Lead',
                      style: TextStyle(
                        fontSize: 40, // Adjusted font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // White text
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      AppBarMenu(
                        title: 'Home',
                        action: () {
                          context.go('/');
                        },
                        textStyle: const TextStyle(
                          fontSize: 16, // Adjusted to match the image
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(width: 20), // Space between menu items
                      PopupMenuButton<String>(
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'What We Do',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        onSelected: (value) {
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
                      const SizedBox(width: 20),
                      AppBarMenu(
                        title: 'Our Blog',
                        action: () {
                          context.go('/our-blog');
                        },
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(width: 20),
                      AppBarMenu(
                        title: 'About us',
                        action: () {
                          context.go('/about-us');
                        },
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Add blue bar starting after the "Welead" text
            Positioned(
              bottom: 0,
              left: size.width * 0.25, // Start the blue bar after "Welead"
              child: Container(
                width: size.width * 0.75, // Extend the blue bar under the menu
                height: 8, // Thin blue bar at the bottom
                color: const Color(0xFF003B56),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Adjust the diagonal line's angle to make it more subtle
    path.lineTo(size.width * 0.75, 0); // Top-right point
    path.lineTo(size.width, size.height); // Bottom-right point
    path.lineTo(0, size.height); // Bottom-left point
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
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
        height: 1300,
        width: size.width > 1500 ? size.width * .08 : size.width * .08,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
