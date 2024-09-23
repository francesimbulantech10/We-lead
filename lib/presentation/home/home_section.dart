import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
        if (constraints.maxWidth > 1299) {
          return const WebView();
        } else if (constraints.maxWidth > 500){
          return const TabletView();
        }
        
        else {
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

class _WebViewState extends State<WebView> with TickerProviderStateMixin {



  final List<String> imgList = [
    'Pamilya1.jpg',
    'Welead1.jpg',
    'Welead2.jpg',
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
  // final slider_controller.CarouselController _carouselController = slider_controller.CarouselController();

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
                Center(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 600.0, // Set your preferred height
                      autoPlay: true, // Auto slide
                      enlargeCenterPage:
                          false, // Disable enlarging the current slide
                      aspectRatio: 16 / 9, // Aspect ratio for slides
                      autoPlayInterval:
                          const Duration(seconds: 3), // Interval between slides
                      viewportFraction:
                          1.0, // Show only one image (no partial images on the sides)
                    ),
                    items: imgList.map((url) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: size.width, // Set width to screen width
                            margin: const EdgeInsets.symmetric(horizontal: 0.0),
                            decoration: const BoxDecoration(
                              color: Colors.black, // Optional background color
                            ),
                            child: Image.asset(
                              url,
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire width
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                const Gap(50),
                const Center(
                    child: Text(
                  'What We Do',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                )),
                const Gap(100),
                Wrap(
                  runSpacing: 60,
                  spacing: 40, //width spacing for the containers

                  children: [
                    InkWell(
                      onTap: () {
                        context.go(
                            "/what-we-do"); //this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/power1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Power",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "Empowering the Electric Power Industry: Renewable Generation and Distribution Solutions.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/Water2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Water",
                                style: TextStyle(
                                    fontWeight:
                                        FontWeight.bold, // Font weight (bold)
                                    fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We provide water filtration systems and meters to ensure safe, clean water for drinking and specific purposes.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/energy2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            //Title
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Energy",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We offer clean energy solutions through solar and hydro power.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                Wrap(
                  runSpacing: 60,
                  spacing: 40, //width spacing for the containers
                  direction: Axis.horizontal, // Align

                  children: [
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/sourcing1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Sourcing",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We provide excellent and safe options for sourcing helping you unlock the potential of your business.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/ecommerce.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "E-Commerce",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We give convenient and accessible B2B source for top quality local products of linking businesses to a wide range of Filipino goods and services through our platform, Pamilya.com.ph",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/softdev.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Software Development",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We specialize in software development for websites, applications, and POS systems, providing businesses with streamlined digital solutions",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(100),
                const Center(
                  child: Text(
                    'Meet Our Clients',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
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
                      const SizedBox(
                        width: 500,
                        child: SizedBox(
                          width: 100, // Adjusted width for the text content
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Us',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 60),
                              ),
                              Text(
                                'We Lead Comtech Inc. provides products and solutions for power, '
                                'energy, water, and software applications to companies local and abroad. '
                                'Our power products include power transformers, automatic voltage regulators, '
                                'energy meters, and distribution transformers. Energy solutions are for providing renewable '
                                'energy sources like Solar and Hydro. Water products cater to water treatment, water meters, etc. '
                                'We also offer software solutions that can deliver efficient and personalized customer service '
                                'and engagement. As a company, we seek to honor God through generating businesses and employment '
                                'for our fellowmen in the Philippines and abroad. We strive for excellence in everything we do, '
                                'and are committed to continuously improve our services according to the values and culture of the company '
                                'based on our guiding principles: love for God, love for the country, and love for the people.',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(150),
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
                        color: const Color.fromARGB(255, 0, 115, 255),
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
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
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
                                SizedBox(width: 250),
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
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(600),
                const Center(
                    child: Text(
                  'Our Blog',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                )),
                const Gap(50),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/Watthour.jpg",
                                      fit: BoxFit.cover,
                                      width: 300,
                                      height: 350,
                                      // Ensure the image covers the container
                                    ),
                                    const Gap(20),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 150),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Watthour Meter Implemented in North and Central Luzon',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white),
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/empowerment.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 140),
                                      child: Text(
                                        'Empowerment Through Tourism: A Transformative Journey of Growth and Connection',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/unlockMarket.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 140, left: 10, right: 10),
                                      child: Text(
                                        'Unlocking the Market Value of Filipino-Made Local Products for Export',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/softdev.jpg",
                                      fit: BoxFit.cover,
                                      width: 300,
                                      height: 350,
                                      // Ensure the image covers the container
                                    ),
                                    const Gap(20),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 190),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Software Development',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white),
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/unleashing.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 150, left: 10, right: 10),
                                      child: Text(
                                        'Unleashing Global Potential: We Lead, We Source with ANTS Sourcing',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/solar.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 140, left: 10, right: 10),
                                      child: Text(
                                        '10KW off grid solar system in Pampanga, Philippines',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(60),
                Column(
                  children: [
                    const Text(
                      "Contact",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 500,
                      width: 1200,
                      child: Image.asset('Welead2.jpg', fit: BoxFit.cover),
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

//MOBILE VIEW

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final List<String> imgList = [
    'Pamilya1.jpg',
    'Welead1.jpg',
    'Welead2.jpg',
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
                Center(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 600.0, // Set your preferred height
                      autoPlay: true, // Auto slide
                      enlargeCenterPage:
                          false, // Disable enlarging the current slide
                      aspectRatio: 16 / 9, // Aspect ratio for slides
                      autoPlayInterval:
                          const Duration(seconds: 3), // Interval between slides
                      viewportFraction:
                          1.0, // Show only one image (no partial images on the sides)
                    ),
                    items: imgList.map((url) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: size.width, // Set width to screen width
                            margin: const EdgeInsets.symmetric(horizontal: 0.0),
                            decoration: const BoxDecoration(
                              color: Colors.black, // Optional background color
                            ),
                            child: Image.asset(
                              url,
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire width
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                const Gap(50),
                const Center(
                    child: Text(
                  'What We Do',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                )),
                const Gap(100),
                Wrap(
                  runSpacing: 60,
                  spacing: 40, //width spacing for the containers

                  children: [
                    InkWell(
                      onTap: () {
                        context.go(
                            "/what-we-do"); //this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/power1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Power",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "Empowering the Electric Power Industry: Renewable Generation and Distribution Solutions.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/Water2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Water",
                                style: TextStyle(
                                    fontWeight:
                                        FontWeight.bold, // Font weight (bold)
                                    fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We provide water filtration systems and meters to ensure safe, clean water for drinking and specific purposes.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/energy2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            //Title
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Energy",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We offer clean energy solutions through solar and hydro power.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                Wrap(
                  runSpacing: 60,
                  spacing: 40, //width spacing for the containers
                  direction: Axis.horizontal, // Align

                  children: [
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/sourcing1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Sourcing",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We provide excellent and safe options for sourcing helping you unlock the potential of your business.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/ecommerce.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "E-Commerce",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We give convenient and accessible B2B source for top quality local products of linking businesses to a wide range of Filipino goods and services through our platform, Pamilya.com.ph",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/softdev.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Software Development",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We specialize in software development for websites, applications, and POS systems, providing businesses with streamlined digital solutions",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(100),
                const Center(
                  child: Text(
                    'Meet Our Clients',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
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
                  width: size.width, // Set the width of the container to 300
                  // Set the height of the container to 200
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 500,
                        child: SizedBox(
                          width: 100, // Adjusted width for the text content
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Us',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 60),
                              ),
                              Text(
                                'We Lead Comtech Inc. provides products and solutions for power,energy, water, and software applications to companies local and abroad.Our power products include power transformers, automatic voltage regulators,energy meters, and distribution transformers. Energy solutions are for providing renewable energy sources like Solar and Hydro. Water products cater to water treatment, water meters, etc. We also offer software solutions that can deliver efficient and personalized customer service and engagement. As a company, we seek to honor God through generating businesses and employment for our fellowmen in the Philippines and abroad. We strive for excellence in everything we do, and are committed to continuously improve our services according to the values and culture of the company based on our guiding principles: love for God, love for the country, and love for the people.'
                                ,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                    textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(50),
                      SizedBox(
                        width: size.width,
                        child: Image.asset(
                          'Welead2.jpg',
                        ), // Image at the end
                      ),
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.all(20),
                        //  width: size.width,
                        color: const Color.fromARGB(255, 0, 115, 255),
                        child:const  Column(
                          children: [
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
                                Text('Industry Partners',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 20)),
                              ],
                            ),
                            Gap( 20),
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
                            Gap( 20),
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
                      ),
                    ],
                  ),
                ),
                const Center(
                    child: Text(
                  'Our Blog',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                )),
                const Gap(50),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/Watthour.jpg",
                                      fit: BoxFit.cover,
                                      width: 300,
                                      height: 350,
                                      // Ensure the image covers the container
                                    ),
                                    const Gap(20),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 150),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Watthour Meter Implemented in North and Central Luzon',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white),
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/empowerment.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 140),
                                      child: Text(
                                        'Empowerment Through Tourism: A Transformative Journey of Growth and Connection',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/unlockMarket.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 140, left: 10, right: 10),
                                      child: Text(
                                        'Unlocking the Market Value of Filipino-Made Local Products for Export',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/softdev.jpg",
                                      fit: BoxFit.cover,
                                      width: 300,
                                      height: 350,
                                      // Ensure the image covers the container
                                    ),
                                    const Gap(20),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 190),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Software Development',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white),
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/unleashing.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 150, left: 10, right: 10),
                                      child: Text(
                                        'Unleashing Global Potential: We Lead, We Source with ANTS Sourcing',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/solar.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 140, left: 10, right: 10),
                                      child: Text(
                                        '10KW off grid solar system in Pampanga, Philippines',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(60),
                Column(
                  children: [
                    const Text(
                      "Contact",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 500,
                      width: 1200,
                      child: Image.asset('Welead2.jpg', fit: BoxFit.cover),
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
    'Pamilya1.jpg',
    'Welead1.jpg',
    'Welead2.jpg',
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
                Center(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 600.0, // Set your preferred height
                      autoPlay: true, // Auto slide
                      enlargeCenterPage:
                          false, // Disable enlarging the current slide
                      aspectRatio: 16 / 9, // Aspect ratio for slides
                      autoPlayInterval:
                          const Duration(seconds: 3), // Interval between slides
                      viewportFraction:
                          1.0, // Show only one image (no partial images on the sides)
                    ),
                    items: imgList.map((url) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: size.width, // Set width to screen width
                            margin: const EdgeInsets.symmetric(horizontal: 0.0),
                            decoration: const BoxDecoration(
                              color: Colors.black, // Optional background color
                            ),
                            child: Image.asset(
                              url,
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire width
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                const Gap(50),
                const Center(
                    child: Text(
                  'What We Do',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                )),
                const Gap(100),
                Wrap(
                  runSpacing: 60,
                  spacing: 40, //width spacing for the containers

                  children: [
                    InkWell(
                      onTap: () {
                        context.go(
                            "/what-we-do"); //this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/power1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Power",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "Empowering the Electric Power Industry: Renewable Generation and Distribution Solutions.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/Water2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Water",
                                style: TextStyle(
                                    fontWeight:
                                        FontWeight.bold, // Font weight (bold)
                                    fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We provide water filtration systems and meters to ensure safe, clean water for drinking and specific purposes.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/energy2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            //Title
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Energy",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We offer clean energy solutions through solar and hydro power.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                Wrap(
                  runSpacing: 60,
                  spacing: 40, //width spacing for the containers
                  direction: Axis.horizontal, // Align

                  children: [
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/sourcing1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Sourcing",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We provide excellent and safe options for sourcing helping you unlock the potential of your business.",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/ecommerce.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "E-Commerce",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We give convenient and accessible B2B source for top quality local products of linking businesses to a wide range of Filipino goods and services through our platform, Pamilya.com.ph",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //context.go("/"); this is the navigation where i click it will direct to a page
                      },
                      child: Container(
                        width: 300,
                        height: 450,
                        //padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: size.width,
                              child: Image.asset(
                                "what-we-do/softdev.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0), // Padding around the text
                              child: Text(
                                "Software Development",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(20),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 20.0), // Padding around the text
                              child: Text(
                                "We specialize in software development for websites, applications, and POS systems, providing businesses with streamlined digital solutions",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(100),
                const Center(
                  child: Text(
                    'Meet Our Clients',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
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
                  width: size.width, // Set the width of the container to 300
                  // Set the height of the container to 200
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 500,
                        child: SizedBox(
                          width: 100, // Adjusted width for the text content
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Us',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 60),
                              ),
                              Text(
                                'We Lead Comtech Inc. provides products and solutions for power,energy, water, and software applications to companies local and abroad.Our power products include power transformers, automatic voltage regulators,energy meters, and distribution transformers. Energy solutions are for providing renewable energy sources like Solar and Hydro. Water products cater to water treatment, water meters, etc. We also offer software solutions that can deliver efficient and personalized customer service and engagement. As a company, we seek to honor God through generating businesses and employment for our fellowmen in the Philippines and abroad. We strive for excellence in everything we do, and are committed to continuously improve our services according to the values and culture of the company based on our guiding principles: love for God, love for the country, and love for the people.'
                                ,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(50),
                      SizedBox(
                        width: size.width,
                        child: Image.asset(
                          'Welead2.jpg',
                        ), // Image at the end
                      ),
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.all(20),
                        //  width: size.width,
                        color: const Color.fromARGB(255, 0, 115, 255),
                        child:const  Column(
                          children: [
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
                                Text('Industry Partners',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 20)),
                              ],
                            ),
                            Gap( 20),
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
                            Gap( 20),
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
                      ),
                    ],
                  ),
                ),
                const Center(
                    child: Text(
                  'Our Blog',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                )),
                const Gap(50),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/Watthour.jpg",
                                      fit: BoxFit.cover,
                                      width: 300,
                                      height: 350,
                                      // Ensure the image covers the container
                                    ),
                                    const Gap(20),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 150),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Watthour Meter Implemented in North and Central Luzon',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white),
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/empowerment.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 140),
                                      child: Text(
                                        'Empowerment Through Tourism: A Transformative Journey of Growth and Connection',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/unlockMarket.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 140, left: 10, right: 10),
                                      child: Text(
                                        'Unlocking the Market Value of Filipino-Made Local Products for Export',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/softdev.jpg",
                                      fit: BoxFit.cover,
                                      width: 300,
                                      height: 350,
                                      // Ensure the image covers the container
                                    ),
                                    const Gap(20),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 190),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Software Development',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white),
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/unleashing.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 150, left: 10, right: 10),
                                      child: Text(
                                        'Unleashing Global Potential: We Lead, We Source with ANTS Sourcing',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              context.go(""); // Navigate to the specified page
                            },
                            child: Center(
                              child: Container(
                                width: 300,
                                height: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Stack(
                                  fit: StackFit
                                      .expand, // Ensure the stack fills the container
                                  children: [
                                    Image.asset(
                                      "our-blogs/solar.jpg",
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the container
                                    ),
                                    const Gap(40),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 140, left: 10, right: 10),
                                      child: Text(
                                        '10KW off grid solar system in Pampanga, Philippines',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(60),
                Column(
                  children: [
                    const Text(
                      "Contact",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 500,
                      width: 1200,
                      child: Image.asset('Welead2.jpg', fit: BoxFit.cover),
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