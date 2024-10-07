import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_web/widgets/auto_size_inter_text.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1274) {
          return const WebView(); // Desktop view for wide screens
        } else if (constraints.maxWidth > 695) {
          return const TabletView(); // Tablet view for medium screens
        } else {
          return const MobileView(); // Mobile view for narrow screens
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

class _WebViewState extends State<WebView> with TickerProviderStateMixin {
  int? hoverIndex;
  final List<String> imgList = [
    'WElead2.jpg',
    'Pamilya1.jpg',
    'WElead1.jpg',
    'program.jpg',
    'Sourcinghome.jpg',
  ];
  final List<String> imgtitle = [
    'Providing the Best Option',
    'Online Market to your Local Products',
    'We Lead in Commerce & Technology',
    'Driving Success through Innovation & Solutions',
    'Your Global Sourcing Partner',
  ];
  int _currentIndex = 0;
  double _opacity = 1.0;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _startAutoFade();
  }

  void _startAutoFade() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      setState(() {
        _opacity = 0.0; // Fade out
      });

      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          _currentIndex = (_currentIndex + 1) % imgList.length;
          _opacity = 1.0; // Fade in
        });
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  List<Map<String, String>> items = [
    {
      "image": "what-we-do/power1.jpg",
      "title": "Power",
      "description":
          "Empowering the Electric Power Industry: Renewable Generation and Distribution Solutions.",
    },
    {
      "image": "what-we-do/Water2.jpg",
      "title": "Water",
      "description":
          "We provide water filtration systems and meters to ensure safe, clean water for drinking and specific purposes.",
    },
    {
      "image": "what-we-do/energy2.jpg",
      "title": "Energy",
      "description":
          "We offer clean energy solutions through solar and hydro power.",
    },
    {
      "image": "what-we-do/sourcing1.jpg",
      "title": "Sourcing",
      "description":
          "We provide excellent and safe options for sourcing helping you unlock the potential of your business.",
    },
    {
      "image": "what-we-do/ecommerce.jpg",
      "title": "E-Commerce",
      "description":
          "We give convenient and accessible B2B source for top quality local products of linking businesses to a wide range of Filipino goods and services through our platform, Pamilya.com.ph",
    },
    {
      "image": "what-we-do/softdev.jpg",
      "title": "Software Development",
      "description":
          "We specialize in software development for websites, applications, and POS systems, providing businesses with streamlined digital solutions.",
    },
  ];
  List<String> links = [
    "/power",
    "/water",
    "/energy",
    "/sourcing",
    "/ecommerce",
    "/software",
  ];

  List<String> ourblogslinks = [
    "/watthour",
    "/empower",
    "/unlocking",
    "/softwareblog",
    "/unleashing",
    "/solar",
  ];
  //why do you choose use section

  // ignore: non_constant_identifier_names
  final List<String> Ourblogsimg = [
    "our-blogs/Watthour.jpg",
    "our-blogs/empowerment.jpg",
    "our-blogs/unlockMarket.jpg",
    "our-blogs/softdev.jpg",
    "our-blogs/unleashing.jpg",
    "our-blogs/solar.jpg",
  ];

  List<String> ourblogstitle = [
    "Watthour Meter Implemented in North and Central Luzon",
    "Empowerment Through Tourism: A Transformative Journey of Growth and Connection",
    "Unlocking the Market Value of Filipino-Made Local Products for Export",
    "Software Development",
    "Unleashing Global Potential: We Lead, We Source with ANTS Sourcing",
    "10KW off grid solar system in Pampanga, Philippines",
  ];

  final List<String> meetClientsImg = [
    "logos_homepage/apsc.jpg",
    "logos_homepage/jve.jpg",
    "logos_homepage/marriot.jpg",
    "logos_homepage/pelco2.jpg",
    "logos_homepage/meralcov2.jpg",
  ];
  final List<String> meetClientsImg2 = [
    "logos_homepage/pelco2v2.jpg",
    "logos_homepage/sfelacpo.jpg",
    "logos_homepage/toyota.jpg",
    "logos_homepage/zameco2v2.jpg",
    "logos_homepage/Electro.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: SizedBox(
        width: size.width,
        child: Column(
          children: [
            Container(
              color: const Color(0xFF003B56),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: size.width,
                  height: 800,
                  child: Center(
                    child: SizedBox(
                      height:
                          900, // Increased height for the AnimatedOpacity container
                      child: AnimatedOpacity(
                        opacity: _opacity,
                        duration:
                            const Duration(milliseconds: 500), // Fade duration
                        child: SizedBox(
                          width: size.width, // Set width to screen width
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/${imgList[_currentIndex]}', // Ensure the full path is correct
                                fit: BoxFit
                                    .cover, // Cover the entire available width and height
                                width: size
                                    .width, // Set the width explicitly to size.width
                                height:
                                    800, // Set height to match your container
                              ),
                              AutoSizeInterText(text: imgtitle[_currentIndex]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 70),
                child: Column(
                  children: [
                    const Center(
                        child: Text(
                      'What We Do',
                      style: TextStyle(
                          color: Color(0xFF003B56),
                          fontWeight: FontWeight.bold,
                          fontSize: 60),
                    )),
                    const Gap(20),
                    SizedBox(
                      width: 1000,
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runSpacing: 40, // Vertical spacing between cards
                        spacing: 20, // Horizontal spacing between cards
                        children: items
                            .asMap()
                            .map((index, item) {
                              return MapEntry(
                                index,
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      hoverIndex =
                                          index; // Track the hovered item index
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      hoverIndex =
                                          null; // Reset when mouse leaves the container
                                    });
                                  },
                                  child: InkWell(
                                    onTap: () {
                                      // Use the links list for navigation
                                      context.go(links[index]);
                                    },
                                    child: Container(
                                      width: 300, // Fixed width of each card
                                      height: 450, // Fixed height of each card
                                      decoration: BoxDecoration(
                                        color: hoverIndex == index
                                            ? const Color(0xFF003B56)
                                            : Colors
                                                .white, // Change color on hover
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 0.5,
                                            color: Colors.grey.shade400),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 6,
                                            offset: const Offset(
                                                0, 3), // Position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Image section
                                          SizedBox(
                                            height: 200,
                                            width:
                                                double.infinity, // Full width
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.vertical(
                                                top: Radius.circular(10),
                                              ), // Rounded top corners
                                              child: Image.asset(
                                                item["image"]!,
                                                fit: BoxFit
                                                    .cover, // Fill the space with the image
                                              ),
                                            ),
                                          ),
                                          const Gap(20),
                                          // Title section
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              item["title"]!,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: hoverIndex == index
                                                    ? Colors
                                                        .white // Change title color to white on hover
                                                    : Colors
                                                        .black, // Default to black when not hovered
                                              ),
                                            ),
                                          ),
                                          const Gap(10),
                                          // Description section
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              item["description"]!,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: hoverIndex == index
                                                    ? Colors
                                                        .white // Change title color to white on hover
                                                    : Colors
                                                        .black, // Regular black description
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })
                            .values
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(50),
            const Center(
              child: Text(
                'Meet Our Clients',
                style: TextStyle(
                    color: Color(0xFF003B56),
                    fontWeight: FontWeight.bold,
                    fontSize: 60),
              ),
            ),
            const Gap(50),
            SizedBox(
              width: size.width,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 200,
                children: meetClientsImg
                    .map(
                      (e) => Image.asset(
                        e,
                        width: 100,
                        height: 100,
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              width: size.width,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 200,
                children: meetClientsImg2
                    .map(
                      (e) => Image.asset(
                        e,
                        width: 100,
                        height: 100,
                      ),
                    )
                    .toList(),
              ),
            ),
            const Gap(200),
            SizedBox(
              width: 3500, // Set the width of the container to 300
              height: 200, // Set the height of the container to 200
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Stack(
                          alignment: Alignment
                              .center, // Align the text and line in the center
                          children: [
                            // Underline

                            // Text
                            Text(
                              'About Us',
                              style: TextStyle(
                                color: Color(0xFF003B56),
                                fontWeight: FontWeight.bold,
                                fontSize: 60,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width * .382,
                          child: const Text(
                            'We Lead Comtech Inc. provides products and solutions for power, energy, water, and software applications to companies local and abroad. Our power products include power transformers, automatic voltage regulators, energy meters, and distribution transformers. Energy solutions are for providing renewable energy sources like Solar and Hydro. Water products cater to water treatment, water meters, etc. We also offer software solutions that can deliver efficient and personalized customer service and engagement.\n\nAs a company, we seek to honor God through generating businesses and employment for our fellowmen in the Philippines and abroad. We strive for excellence in everything we do, and are committed to continuously improve our services according to the values and culture of the company based on our guiding principles: love for God, love for the country, and love for the people.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.justify,
                            maxLines: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(450),
                  SizedBox(
                    height: 500,
                    width: size.width * .6,
                    child: Image.asset(
                      'Welead2.jpg',
                      fit: BoxFit.cover,
                    ), // Image at the end
                  ),
                  Container(
                    padding: const EdgeInsets.all(50),
                    width: size.width,
                    color: const Color(0xFF003B56),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    '24',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 50),
                                  ),
                                  Text('Industry Partners',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 20)),
                                ],
                              ),
                            ),
                            SizedBox(width: 250),
                            Column(
                              children: [
                                Text(
                                  '24',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 50),
                                ),
                                Text('Years of Experience',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 20)),
                              ],
                            ),
                            SizedBox(width: 250),
                            Column(
                              children: [
                                Text(
                                  '2,000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 50),
                                ),
                                Text('Satisfied Clients',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 20)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //OUR BLOGS
            const Gap(600),
            const Center(
                child: Text(
              'Our Blog',
              style: TextStyle(
                  color: Color(0xFF003B56),
                  fontWeight: FontWeight.bold,
                  fontSize: 60),
            )),
            const Gap(50),
            SizedBox(
              width: size.width * .6,
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 20, // Adjust spacing as needed
                runSpacing: 20,
                children: List.generate(ourblogslinks.length, (index) {
                  return InkWell(
                    onTap: () {
                      context.go(ourblogslinks[index]);
                    },
                    child: Container(
                      width: 300,
                      height: 290,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.black),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            Ourblogsimg[index],
                            fit: BoxFit.cover,
                            width: 300,
                            height: 290, // Adjust height to match the container
                          ),
                          const Gap(20),
                          Padding(
                            padding: const EdgeInsets.only(top: 150),
                            child: Column(
                              children: [
                                Text(
                                  ourblogstitle[index],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const Gap(50),
            const Gap(60),
            Column(
              children: [
                const Text(
                  "Contact",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Color(0xFF003B56)),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: 500,
                  width: 1200,
                  child: Image.asset('location.png', fit: BoxFit.cover),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//MOBILE VIEW

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final List<String> imgList = [
    'WElead2.jpg',
    'Pamilya1.jpg',
    'WElead1.jpg',
    'program.jpg',
    'Sourcinghome.jpg',
  ];
  final List<String> imgtitle = [
    'Providing the best option',
    'Online market to your local products',
    'We Lead in Commerce & Technology',
    'Driving Success through innovation & solutions',
    'Your Global Sourcing Partner',
  ];
  int _currentIndex = 0;
  double _opacity = 1.0;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _startAutoFade();
  }

  void _startAutoFade() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      setState(() {
        _opacity = 0.0; // Fade out
      });

      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          _currentIndex = (_currentIndex + 1) % imgList.length;
          _opacity = 1.0; // Fade in
        });
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  List<Map<String, String>> items = [
    {
      "image": "what-we-do/power1.jpg",
      "title": "Power",
      "description":
          "Empowering the Electric Power Industry: Renewable Generation and Distribution Solutions.",
    },
    {
      "image": "what-we-do/Water2.jpg",
      "title": "Water",
      "description":
          "We provide water filtration systems and meters to ensure safe, clean water for drinking and specific purposes.",
    },
    {
      "image": "what-we-do/energy2.jpg",
      "title": "Energy",
      "description":
          "We offer clean energy solutions through solar and hydro power.",
    },
    {
      "image": "what-we-do/sourcing1.jpg",
      "title": "Sourcing",
      "description":
          "We provide excellent and safe options for sourcing helping you unlock the potential of your business.",
    },
    {
      "image": "what-we-do/ecommerce.jpg",
      "title": "E-Commerce",
      "description":
          "We give convenient and accessible B2B source for top quality local products of linking businesses to a wide range of Filipino goods and services through our platform, Pamilya.com.ph",
    },
    {
      "image": "what-we-do/softdev.jpg",
      "title": "Software Development",
      "description":
          "We specialize in software development for websites, applications, and POS systems, providing businesses with streamlined digital solutions.",
    },
  ];
  List<String> links = [
    "/power",
    "/water",
    "/energy",
    "/sourcing",
    "/ecommerce",
    "/software",
  ];

  List<String> ourblogslinks = [
    "/watthour",
    "/empower",
    "/unlocking",
    "/software",
    "/unleashing",
    "/solar",
  ];
  //why do you choose use section

  // ignore: non_constant_identifier_names
  final List<String> Ourblogsimg = [
    "our-blogs/Watthour.jpg",
    "our-blogs/empowerment.jpg",
    "our-blogs/unlockMarket.jpg",
    "our-blogs/softdev.jpg",
    "our-blogs/unleashing.jpg",
    "our-blogs/solar.jpg",
  ];

  List<String> ourblogstitle = [
    "Watthour Meter Implemented in North and Central Luzon",
    "Empowerment Through Tourism: A Transformative Journey of Growth and Connection",
    "Unlocking the Market Value of Filipino-Made Local Products for Export",
    "Software Development",
    "Unleashing Global Potential: We Lead, We Source with ANTS Sourcing",
    "10KW off grid solar system in Pampanga, Philippines",
  ];

  final List<String> meetClientsImg = [
    "logos_homepage/apsc.jpg",
    "logos_homepage/jve.jpg",
    "logos_homepage/marriot.jpg",
    "logos_homepage/pelco2.jpg",
    "logos_homepage/meralcov2.jpg",
  ];
  final List<String> meetClientsImg2 = [
    "logos_homepage/pelco2v2.jpg",
    "logos_homepage/sfelacpo.jpg",
    "logos_homepage/toyota.jpg",
    "logos_homepage/zameco2v2.jpg",
    "logos_homepage/Electro.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            child: Column(
              children: [
                //1st display carousel slider
                Container(
                  color: const Color(0xFF003B56),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      width: size.width,
                      height: 800,
                      child: Center(
                        child: SizedBox(
                          height:
                              900, // Increased height for the AnimatedOpacity container
                          child: AnimatedOpacity(
                            opacity: _opacity,
                            duration: const Duration(
                                milliseconds: 500), // Fade duration
                            child: SizedBox(
                              width: size.width, // Set width to screen width
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/${imgList[_currentIndex]}', // Ensure the full path is correct
                                    fit: BoxFit
                                        .cover, // Cover the entire available width and height
                                    width: size
                                        .width, // Set the width explicitly to size.width
                                    height:
                                        800, // Set height to match your container
                                  ),
                                  AutoSizeInterText(
                                      text: imgtitle[_currentIndex]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      children: [
                        const Center(
                            child: Text(
                          'What We Do',
                          style: TextStyle(
                              color: Color(0xFF003B56),
                              fontWeight: FontWeight.bold,
                              fontSize: 60),
                        )),
                        const Gap(20),
                        SizedBox(
                          width: 1000,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            runSpacing: 40, // Vertical spacing between cards
                            spacing: 20, // Horizontal spacing between cards
                            children: items
                                .asMap()
                                .map((index, item) {
                                  return MapEntry(
                                    index,
                                    InkWell(
                                      onTap: () {
                                        // Use the links list for navigation
                                        context.go(links[index]);
                                      },
                                      child: Container(
                                        width: 300, // Fixed width of each card
                                        height:
                                            450, // Fixed height of each card
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 0.5,
                                              color: Colors.grey.shade400),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  // ignore: deprecated_member_use
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 6,
                                              offset: const Offset(
                                                  0, 3), // Position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            // Image section
                                            SizedBox(
                                              height: 200,
                                              width:
                                                  double.infinity, // Full width
                                              child: ClipRRect(
                                                borderRadius: const BorderRadius
                                                    .vertical(
                                                    top: Radius.circular(
                                                        10)), // Rounded top corners
                                                child: Image.asset(
                                                  item["image"]!,
                                                  fit: BoxFit
                                                      .cover, // Fill the space with the image
                                                ),
                                              ),
                                            ),
                                            const Gap(20),
                                            // Title section
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                item["title"]!,
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(
                                                      0xFF003B56), // Purple title color
                                                ),
                                              ),
                                            ),
                                            const Gap(10),
                                            // Description section
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                item["description"]!,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors
                                                      .black87, // Regular black description
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                })
                                .values
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(50),
                const Center(
                  child: Text(
                    'Meet Our Clients',
                    style: TextStyle(
                        color: Color(0xFF003B56),
                        fontWeight: FontWeight.bold,
                        fontSize: 60),
                  ),
                ),

                SizedBox(
                  child: Wrap(
                    spacing: 50,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 100,
                          children: meetClientsImg
                              .map(
                                (e) => Image.asset(
                                  e,
                                  width: 200,
                                  height: 100,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 100,
                          children: meetClientsImg2
                              .map(
                                (e) => Image.asset(
                                  e,
                                  width: 200,
                                  height: 100,
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),

                const Gap(200),
                SizedBox(
                  width: 3500, // Set the width of the container to 300
                  height: 200, // Set the height of the container to 200
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 700,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: SizedBox(
                            width: 500, // Adjusted width for the text content
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'About Us',
                                  style: TextStyle(
                                      color: Color(0xFF003B56),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60),
                                ),
                                const Gap(20),
                                SizedBox(
                                  width: size.width * .7,
                                  child: const Text(
                                    'We Lead Comtech Inc. provides products and solutions for power, energy, water, and software applications to companies local and abroad. Our power products include power transformers, automatic voltage regulators, energy meters, and distribution transformers. Energy solutions are for providing renewable energy sources like Solar and Hydro. Water products cater to water treatment, water meters, etc. We also offer software solutions that can deliver efficient and personalized customer service and engagement.\n\nAs a company, we seek to honor God through generating businesses and employment for our fellowmen in the Philippines and abroad. We strive for excellence in everything we do, and are committed to continuously improve our services according to the values and culture of the company based on our guiding principles: love for God, love for the country, and love for the people.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.justify,
                                    maxLines: 18,
                                  ),
                                ),
                                const Gap(50),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        width: 800,
                        child: Image.asset(
                          'Welead2.jpg',
                          fit: BoxFit.fill,
                        ), // Image at the end
                      ),
                      Container(
                        padding: const EdgeInsets.all(50),
                        width: size.width,
                        color: const Color(0xFF003B56),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            // Check if the width is less than or equal to 886 pixels
                            var isSmallScreen = constraints.maxWidth <= 886;

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  spacing: isSmallScreen
                                      ? 0
                                      : 5, // Remove spacing if screen width is 886 or less
                                  children: const [
                                    Column(
                                      children: [
                                        SizedBox(
                                          child: Column(
                                            children: [
                                              Text(
                                                '24',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 64),
                                              ),
                                              Text('Industry Partners',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontSize: 28)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    // Adjusted based on the Wrap spacing
                                    Column(
                                      children: [
                                        Text(
                                          '24',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 64),
                                        ),
                                        Text('Years of Experience',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontSize: 28)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '2,000',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 64),
                                        ),
                                        Text('Satisfied Clients',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontSize: 28)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //OUR BLOGS
                const Gap(1600),
                const Center(
                    child: Text(
                  'Our Blog',
                  style: TextStyle(
                      color: Color(0xFF003B56),
                      fontWeight: FontWeight.bold,
                      fontSize: 60),
                )),
                const Gap(50),
                SizedBox(
                  width: size.width * .55,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 20, // Adjust spacing as needed
                    runSpacing: 20,
                    children: List.generate(ourblogslinks.length, (index) {
                      return InkWell(
                        onTap: () {
                          context.go(ourblogslinks[index]);
                        },
                        child: Container(
                          width: 300,
                          height: 290,
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.black),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                Ourblogsimg[index],
                                fit: BoxFit.cover,
                                width: 300,
                                height:
                                    290, // Adjust height to match the container
                              ),
                              const Gap(20),
                              Padding(
                                padding: const EdgeInsets.only(top: 150),
                                child: Column(
                                  children: [
                                    Text(
                                      ourblogstitle[index],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const Gap(50),
                const Gap(60),
                Column(
                  children: [
                    const Text(
                      "Contact",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Color(0xFF003B56)),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 500,
                      width: size.width * .8,
                      child: Image.asset('location.png', fit: BoxFit.cover),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabletView extends StatefulWidget {
  const TabletView({super.key});
  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  final List<String> imgList = [
    'WElead2.jpg',
    'Pamilya1.jpg',
    'WElead1.jpg',
    'program.jpg',
    'Sourcinghome.jpg',
  ];
  final List<String> imgtitle = [
    'Providing the best option',
    'Online market to your local products',
    'We Lead in Commerce & Technology',
    'Driving Success through innovation & solutions',
    'Your Global Sourcing Partner',
  ];
  int _currentIndex = 0;
  double _opacity = 1.0;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _startAutoFade();
  }

  void _startAutoFade() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      setState(() {
        _opacity = 0.0; // Fade out
      });

      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          _currentIndex = (_currentIndex + 1) % imgList.length;
          _opacity = 1.0; // Fade in
        });
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  List<Map<String, String>> items = [
    {
      "image": "what-we-do/power1.jpg",
      "title": "Power",
      "description":
          "Empowering the Electric Power Industry: Renewable Generation and Distribution Solutions.",
    },
    {
      "image": "what-we-do/Water2.jpg",
      "title": "Water",
      "description":
          "We provide water filtration systems and meters to ensure safe, clean water for drinking and specific purposes.",
    },
    {
      "image": "what-we-do/energy2.jpg",
      "title": "Energy",
      "description":
          "We offer clean energy solutions through solar and hydro power.",
    },
    {
      "image": "what-we-do/sourcing1.jpg",
      "title": "Sourcing",
      "description":
          "We provide excellent and safe options for sourcing helping you unlock the potential of your business.",
    },
    {
      "image": "what-we-do/ecommerce.jpg",
      "title": "E-Commerce",
      "description":
          "We give convenient and accessible B2B source for top quality local products of linking businesses to a wide range of Filipino goods and services through our platform, Pamilya.com.ph",
    },
    {
      "image": "what-we-do/softdev.jpg",
      "title": "Software Development",
      "description":
          "We specialize in software development for websites, applications, and POS systems, providing businesses with streamlined digital solutions.",
    },
  ];
  List<String> links = [
    "/power",
    "/water",
    "/energy",
    "/sourcing",
    "/ecommerce",
    "/software",
  ];

  List<String> ourblogslinks = [
    "/watthour",
    "/empower",
    "/unlocking",
    "/software",
    "/unleashing",
    "/solar",
  ];
  //why do you choose use section

  // ignore: non_constant_identifier_names
  final List<String> Ourblogsimg = [
    "our-blogs/Watthour.jpg",
    "our-blogs/empowerment.jpg",
    "our-blogs/unlockMarket.jpg",
    "our-blogs/softdev.jpg",
    "our-blogs/unleashing.jpg",
    "our-blogs/solar.jpg",
  ];

  List<String> ourblogstitle = [
    "Watthour Meter Implemented in North and Central Luzon",
    "Empowerment Through Tourism: A Transformative Journey of Growth and Connection",
    "Unlocking the Market Value of Filipino-Made Local Products for Export",
    "Software Development",
    "Unleashing Global Potential: We Lead, We Source with ANTS Sourcing",
    "10KW off grid solar system in Pampanga, Philippines",
  ];

  final List<String> meetClientsImg = [
    "logos_homepage/apsc.jpg",
    "logos_homepage/jve.jpg",
    "logos_homepage/marriot.jpg",
    "logos_homepage/pelco2.jpg",
    "logos_homepage/meralcov2.jpg",
  ];
  final List<String> meetClientsImg2 = [
    "logos_homepage/pelco2v2.jpg",
    "logos_homepage/sfelacpo.jpg",
    "logos_homepage/toyota.jpg",
    "logos_homepage/zameco2v2.jpg",
    "logos_homepage/Electro.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            child: Column(
              children: [
                //1st display carousel slider
                Container(
                  color: const Color(0xFF003B56),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      width: size.width,
                      height: 800,
                      child: Center(
                        child: SizedBox(
                          height:
                              900, // Increased height for the AnimatedOpacity container
                          child: AnimatedOpacity(
                            opacity: _opacity,
                            duration: const Duration(
                                milliseconds: 500), // Fade duration
                            child: SizedBox(
                              width: size.width, // Set width to screen width
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/${imgList[_currentIndex]}', // Ensure the full path is correct
                                    fit: BoxFit
                                        .cover, // Cover the entire available width and height
                                    width: size
                                        .width, // Set the width explicitly to size.width
                                    height:
                                        800, // Set height to match your container
                                  ),
                                  AutoSizeInterText(
                                      text: imgtitle[_currentIndex]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(10),

                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      children: [
                        const Center(
                            child: Text(
                          'What We Do',
                          style: TextStyle(
                              color: Color(0xFF003B56),
                              fontWeight: FontWeight.bold,
                              fontSize: 60),
                        )),
                        const Gap(20),
                        SizedBox(
                          width: 1000,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            runSpacing: 40, // Vertical spacing between cards
                            spacing: 20, // Horizontal spacing between cards
                            children: items
                                .asMap()
                                .map((index, item) {
                                  return MapEntry(
                                    index,
                                    InkWell(
                                      onTap: () {
                                        // Use the links list for navigation
                                        context.go(links[index]);
                                      },
                                      child: Container(
                                        width: 300, // Fixed width of each card
                                        height:
                                            450, // Fixed height of each card
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 0.5,
                                              color: Colors.grey.shade400),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  // ignore: deprecated_member_use
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 6,
                                              offset: const Offset(
                                                  0, 3), // Position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Image section
                                            SizedBox(
                                              height: 200,
                                              width:
                                                  double.infinity, // Full width
                                              child: ClipRRect(
                                                borderRadius: const BorderRadius
                                                    .vertical(
                                                    top: Radius.circular(
                                                        10)), // Rounded top corners
                                                child: Image.asset(
                                                  item["image"]!,
                                                  fit: BoxFit
                                                      .cover, // Fill the space with the image
                                                ),
                                              ),
                                            ),
                                            const Gap(20),
                                            // Title section
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                item["title"]!,
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(
                                                      0xFF003B56), // Purple title color
                                                ),
                                              ),
                                            ),
                                            const Gap(10),
                                            // Description section
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                item["description"]!,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors
                                                      .black87, // Regular black description
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                })
                                .values
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(50),
                const Center(
                  child: Text(
                    'Meet Our Clients',
                    style: TextStyle(
                        color: Color(0xFF003B56),
                        fontWeight: FontWeight.bold,
                        fontSize: 60),
                  ),
                ),
                const Gap(50),
                SizedBox(
                  child: Wrap(
                    spacing: 50,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 100,
                          children: meetClientsImg
                              .map(
                                (e) => Image.asset(
                                  e,
                                  width: 200,
                                  height: 100,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 100,
                          children: meetClientsImg2
                              .map(
                                (e) => Image.asset(
                                  e,
                                  width: 200,
                                  height: 100,
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),

                const Gap(200),
                SizedBox(
                  width: 3500, // Set the width of the container to 300
                  height: 200, // Set the height of the container to 200
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 700,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: SizedBox(
                            width: 500, // Adjusted width for the text content
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'About Us',
                                  style: TextStyle(
                                      color: Color(0xFF003B56),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60),
                                ),
                                Text(
                                  'We Lead Comtech Inc. provides products and solutions for power, energy, water, and software applications to companies local and abroad. Our power products include power transformers, automatic voltage regulators, energy meters, and distribution transformers. Energy solutions are for providing renewable energy sources like Solar and Hydro. Water products cater to water treatment, water meters, etc. We also offer software solutions that can deliver efficient and personalized customer service and engagement.\n\nAs a company, we seek to honor God through generating businesses and employment for our fellowmen in the Philippines and abroad. We strive for excellence in everything we do, and are committed to continuously improve our services according to the values and culture of the company based on our guiding principles: love for God, love for the country, and love for the people.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                  ),
                                  textAlign: TextAlign.justify,
                                  maxLines: 15,
                                ),
                                Gap(50),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        width: 800,
                        child: Image.asset(
                          'Welead2.jpg',
                          fit: BoxFit.fill,
                        ), // Image at the end
                      ),
                      Container(
                        padding: const EdgeInsets.all(50),
                        width: size.width,
                        color: const Color(0xFF003B56),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            // Check if the width is less than or equal to 886 pixels
                            var isSmallScreen = constraints.maxWidth <= 886;

                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Wrap(
                                  spacing: isSmallScreen
                                      ? 0
                                      : 50, // Remove spacing if screen width is 886 or less
                                  children: const [
                                    Column(
                                      children: [
                                        SizedBox(
                                          child: Column(
                                            children: [
                                              Text(
                                                '24',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 50),
                                              ),
                                              Text('Industry Partners',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontSize: 20)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            50), // Adjusted based on the Wrap spacing
                                    Column(
                                      children: [
                                        Text(
                                          '24',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 50),
                                        ),
                                        Text('Years of Experience',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontSize: 20)),
                                      ],
                                    ),
                                    SizedBox(width: 50),
                                    Column(
                                      children: [
                                        Text(
                                          '2,000',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 50),
                                        ),
                                        Text('Satisfied Clients',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontSize: 20)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //OUR BLOGS
                const Gap(1200),
                const Center(
                    child: Text(
                  'Our Blog',
                  style: TextStyle(
                      color: Color(0xFF003B56),
                      fontWeight: FontWeight.bold,
                      fontSize: 60),
                )),
                const Gap(50),
                SizedBox(
                  width: size.width * .5,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 20, // Adjust spacing as needed
                    runSpacing: 20,
                    children: List.generate(ourblogslinks.length, (index) {
                      return InkWell(
                        onTap: () {
                          context.go(ourblogslinks[index]);
                        },
                        child: Container(
                          width: 300,
                          height: 290,
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.black),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                Ourblogsimg[index],
                                fit: BoxFit.cover,
                                width: 300,
                                height:
                                    290, // Adjust height to match the container
                              ),
                              const Gap(20),
                              Padding(
                                padding: const EdgeInsets.only(top: 150),
                                child: Column(
                                  children: [
                                    Text(
                                      ourblogstitle[index],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                      maxLines: 15,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const Gap(50),
                const Gap(60),
                Column(
                  children: [
                    const Text(
                      "Contact",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Color(0xFF003B56)),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 500,
                      width: size.width * .8,
                      child: Image.asset('location.png', fit: BoxFit.cover),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
