import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreen();
}

class _AboutUsScreen extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1019) {
          return const WebView(); // Desktop view for wide screens
        } else if (constraints.maxWidth > 500) {
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

class _WebViewState extends State<WebView> {
  List<String> texts = [
    "INNOVATION",
    "MUTUAL PARTNERSHIP",
    "SERVICE EXCELLENCE",
  ];
  List<EdgeInsets> paddings = [
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "INNOVATION"
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "MUTUAL PARTNERSHIP"
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "SERVICE EXCELLENCE"
  ];

  List<String> corevalues = [
    "LOVE FOR GOD",
    "LOVE FOR THE COUNTRY",
    "LOVE FOR THE PEOPLE",
  ];
  List<String> title = [
    "We show our love for God by striving for excellence in everything we do. We believe our works reflect our worship to God.",
    "We show our love for the country by investing in it. Starting a business is investing in the country. By creating value, generating jobs, and contributing to the economy, we make a positive impact on our society and the nation. We show our love for the country by honoring the values and traditions of the Filipino culture and sharing them with the world.",
    "We seek to imitate Christ’s love in loving the people thru transformed lives. We serve them with honesty, integrity, and compassion as they entrust us with their hopes and dreams. We thus strive and endeavor to create a better future for them and their children.",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: const Color(0xFF003B56),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SizedBox(
                width: size.width,
                height: 450,
                child: Image.asset(
                  'about-us/aboutusbg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Gap(50),
          SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 800,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(
                      height: 150,
                      child: Text(
                        'Elevate Your Success with We Lead: Tailored Solutions, Innovative Partnerships, Service Excellence.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF003B56),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: texts.asMap().entries.map((entry) {
                    int index = entry.key;
                    String text = entry.value;

                    return Container(
                      padding: paddings[
                          index], // Use individual padding for each item
                      width:
                          250, // Same width for all boxes to maintain consistent size
                      alignment:
                          Alignment.center, // Center the text in each box
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 2.0), // Border color and width
                        borderRadius:
                            BorderRadius.circular(4.0), // Rounded corners
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20), // Add spacing between elements
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      const Gap(80),
                      Column(
                        children: [
                          const Text(
                            'Why Choose us',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF003B56),
                            ),
                          ),
                          Container(
                            height: 10, // Thickness of the line
                            width: 100, // Adjust the width as needed
                            color: const Color.fromARGB(
                                255, 255, 102, 0), // Orange color for the line
                          ),
                        ],
                      ),
                      const Gap(70),
                      SizedBox(
                        child: Image.asset('about-us/whychooseus.jpg'),
                      )
                    ],
                  ),
                ),
                const Gap(80),
                Wrap(
                  children: [
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Column(
                              children: [
                                const Text(
                                  'Corporate Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF003B56),
                                  ),
                                ),
                                Container(
                                  height: 10, // Thickness of the line
                                  width: 100, // Adjust the width as needed
                                  color: const Color.fromARGB(255, 255, 102,
                                      0), // Orange color for the line
                                ),
                              ],
                            ),
                          ),
                          const Gap(40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 500,
                                          height: 650,
                                          //padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5,
                                                color: Colors.black),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  SizedBox(
                                                    height: 200,
                                                    width: size.width,
                                                    child: Image.asset(
                                                      "about-us/briefstory.jpg",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .only(
                                                          top:
                                                              145), // Padding around the text
                                                      child: Container(
                                                        width: size.width,
                                                        padding: const EdgeInsets
                                                            .all(
                                                            8.0), // Padding inside the container
                                                        color: Colors
                                                            .white70, // Background color with opacity
                                                        child: const Text(
                                                          "Brief History",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 27,
                                                            color: Colors
                                                                .black, // Text color
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Gap(20),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 9.0,
                                                    right:
                                                        20.0), // Padding around the text
                                                child: Text(
                                                  "We Lead Comtech is a company that specializes in providing products and solutions for power, energy, water, and software applications to some of the large companies locally and globally. Our power products include power transformers, automatic voltage regulators energy meters, and distribution transformers to name a few; Energy solutions are for providing renewable energy sources like Solar and Hydro; Water products cater to water treatment, water meters, etc. We also offer software solutions for enterprise like website development, point of sales, or anything that can deliver efficient and personalized customer service and engagement.\n\n"
                                                  "At We Lead Comtech, we are committed to excellence in everything we do. Our core values of love for God, love for the people, and love for the country guide us in our work. We strive to be a company that not only delivers innovative solutions but also make a positive impact on the society.",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.6,
                                                    // Adjust line height if needed
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Gap(20),
                                        Container(
                                          width: 500,
                                          height: 650,
                                          //padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5,
                                                color: Colors.black),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  SizedBox(
                                                    height: 200,
                                                    width: size.width,
                                                    child: Image.asset(
                                                      "about-us/briefstory.jpg",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .only(
                                                          top:
                                                              145), // Padding around the text
                                                      child: Container(
                                                        width: size.width,
                                                        padding: const EdgeInsets
                                                            .all(
                                                            8.0), // Padding inside the container
                                                        color: Colors
                                                            .white70, // Background color with opacity
                                                        child: const Text(
                                                          "About We Lead",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 27,
                                                            color: Color.fromARGB(
                                                                255,
                                                                0,
                                                                0,
                                                                0), // Text color
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Gap(20),
                                              const Padding(
                                                padding: EdgeInsets.all(
                                                    16.0), // Padding around the text
                                                child: Text(
                                                  "We Lead Comtech is a company that specializes in providing products and solutions for power, energy, water, and software applications to some of the large companies locally and globally. Our power products include power transformers, automatic voltage regulators energy meters, and distribution transformers to name a few; Energy solutions are for providing renewable energy sources like Solar and Hydro; Water products cater to water treatment, water meters, etc. We also offer software solutions for enterprise like website development, point of sales, or anything that can deliver efficient and personalized customer service and engagement.\n\n"
                                                  "At We Lead Comtech, we are committed to excellence in everything we do. Our core values of love for God, love for the people, and love for the country guide us in our work. We strive to be a company that not only delivers innovative solutions but also make a positive impact on the society.",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.4,
                                                    // Adjust line height if needed
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Gap(70),
                          SizedBox(
                            child: Column(
                              children: [
                                const Text(
                                  'Core Values',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF003B56)),
                                ),
                                Container(
                                  height: 10, // Thickness of the line
                                  width: 100, // Adjust the width as needed
                                  color: const Color.fromARGB(255, 255, 102,
                                      0), // Orange color for the line
                                ),
                              ],
                            ),
                          ),
                          const Gap(50),
                          Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 50,
                            children: List.generate(corevalues.length, (index) {
                              return SizedBox(
                                height: 500,
                                child: Column(
                                  children: [
                                    Text(
                                      corevalues[index],
                                      style: const TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Gap(50),
                                    SizedBox(
                                      width: 400,
                                      child: Text(
                                        title[index],
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 8,
                                        textAlign: TextAlign.justify,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
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
  State<TabletView> createState() => _TabletView();
}

class _TabletView extends State<TabletView> {
  List<String> texts = [
    "INNOVATION",
    "MUTUAL PARTNERSHIP",
    "SERVICE EXCELLENCE",
  ];
  List<EdgeInsets> paddings = [
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "INNOVATION"
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "MUTUAL PARTNERSHIP"
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "SERVICE EXCELLENCE"
  ];

  List<String> corevalues = [
    "LOVE FOR GOD",
    "LOVE FOR THE COUNTRY",
    "LOVE FOR THE PEOPLE",
  ];
  List<String> title = [
    "We show our love for God by striving for excellence in everything we do. We believe our works reflect our worship to God.",
    "We show our love for the country by investing in it. Starting a business is investing in the country. By creating value, generating jobs, and contributing to the economy, we make a positive impact on our society and the nation. We show our love for the country by honoring the values and traditions of the Filipino culture and sharing them with the world.",
    "We seek to imitate Christ’s love in loving the people thru transformed lives. We serve them with honesty, integrity, and compassion as they entrust us with their hopes and dreams. We thus strive and endeavor to create a better future for them and their children.",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            height: 450,
            child: Image.asset(
              'about-us/aboutusbg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Gap(50),
          SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 800,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(
                      height: 150,
                      child: Text(
                        'Elevate Your Success with We Lead: Tailored Solutions, Innovative Partnerships, Service Excellence.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF003B56),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(50),
                Column(
                  spacing: 150,
                  children: [
                    Wrap(
                      runSpacing: 50,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: texts.asMap().entries.map((entry) {
                        int index = entry.key;
                        String text = entry.value;

                        return Container(
                          padding: paddings[
                              index], // Use individual padding for each item
                          width:
                              250, // Same width for all boxes to maintain consistent size
                          alignment:
                              Alignment.center, // Center the text in each box
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 2.0), // Border color and width
                            borderRadius:
                                BorderRadius.circular(4.0), // Rounded corners
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20), // Add spacing between elements
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(
                  child: Column(
                    children: [
                      const Gap(80),
                      Column(
                        children: [
                          const Text(
                            'Why Choose us',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF003B56),
                            ),
                          ),
                          // Gap between the text and the line
                          Container(
                            height: 10, // Thickness of the line
                            width: 100, // Adjust the width as needed
                            color: const Color.fromARGB(
                                255, 255, 102, 0), // Orange color for the line
                          ),
                        ],
                      ),
                      const Gap(70),
                      SizedBox(
                        child: Image.asset('about-us/whychooseus.jpg'),
                      )
                    ],
                  ),
                ),
                const Gap(80),
                Column(
                  children: [
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Column(
                              children: [
                                const Text(
                                  'Corporate Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF003B56),
                                  ),
                                ),
                                Container(
                                  height: 10, // Thickness of the line
                                  width: 100, // Adjust the width as needed
                                  color: const Color.fromARGB(255, 255, 102,
                                      0), // Orange color for the line
                                ),
                              ],
                            ),
                          ),
                          const Gap(40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 500,
                                          height: 650,
                                          //padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5,
                                                color: Colors.black),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  SizedBox(
                                                    height: 200,
                                                    width: size.width,
                                                    child: Image.asset(
                                                      "about-us/briefstory.jpg",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .only(
                                                          top:
                                                              145), // Padding around the text
                                                      child: Container(
                                                        width: size.width,
                                                        padding: const EdgeInsets
                                                            .all(
                                                            8.0), // Padding inside the container
                                                        color: Colors
                                                            .white70, // Background color with opacity
                                                        child: const Text(
                                                          "Brief History",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 27,
                                                            color: Colors
                                                                .black, // Text color
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Gap(20),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 9.0,
                                                    right:
                                                        20.0), // Padding around the text
                                                child: Text(
                                                  "We Lead Comtech is a company that specializes in providing products and solutions for power, energy, water, and software applications to some of the large companies locally and globally. Our power products include power transformers, automatic voltage regulators energy meters, and distribution transformers to name a few; Energy solutions are for providing renewable energy sources like Solar and Hydro; Water products cater to water treatment, water meters, etc. We also offer software solutions for enterprise like website development, point of sales, or anything that can deliver efficient and personalized customer service and engagement.\n\n"
                                                  "At We Lead Comtech, we are committed to excellence in everything we do. Our core values of love for God, love for the people, and love for the country guide us in our work. We strive to be a company that not only delivers innovative solutions but also make a positive impact on the society.",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.6,
                                                    // Adjust line height if needed
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Gap(20),
                                        Container(
                                          width: 500,
                                          height: 660,
                                          //padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5,
                                                color: Colors.black),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  SizedBox(
                                                    height: 200,
                                                    width: size.width,
                                                    child: Image.asset(
                                                      "about-us/briefstory.jpg",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .only(
                                                          top:
                                                              145), // Padding around the text
                                                      child: Container(
                                                        width: size.width,
                                                        padding: const EdgeInsets
                                                            .all(
                                                            8.0), // Padding inside the container
                                                        color: Colors
                                                            .white70, // Background color with opacity
                                                        child: const Text(
                                                          "About We Lead",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 27,
                                                            color: Colors
                                                                .black, // Text color
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Gap(20),
                                              const Padding(
                                                padding: EdgeInsets.all(
                                                    16.0), // Padding around the text
                                                child: Text(
                                                  "We Lead Comtech is a company that specializes in providing products and solutions for power, energy, water, and software applications to some of the large companies locally and globally. Our power products include power transformers, automatic voltage regulators energy meters, and distribution transformers to name a few; Energy solutions are for providing renewable energy sources like Solar and Hydro; Water products cater to water treatment, water meters, etc. We also offer software solutions for enterprise like website development, point of sales, or anything that can deliver efficient and personalized customer service and engagement.\n\n"
                                                  "At We Lead Comtech, we are committed to excellence in everything we do. Our core values of love for God, love for the people, and love for the country guide us in our work. We strive to be a company that not only delivers innovative solutions but also make a positive impact on the society.",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.4,
                                                    // Adjust line height if needed
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Gap(70),
                          SizedBox(
                            child: Column(
                              children: [
                                const Text(
                                  'Core Values',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF003B56),
                                  ),
                                ),
                                Container(
                                  height: 10, // Thickness of the line
                                  width: 100, // Adjust the width as needed
                                  color: const Color.fromARGB(255, 255, 102,
                                      0), // Orange color for the line
                                ),
                              ],
                            ),
                          ),
                          const Gap(50),
                          SizedBox(
                            child: Column(
                              children:
                                  List.generate(corevalues.length, (index) {
                                return Wrap(
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(
                                      height: 300,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 500,
                                            child: Column(
                                              children: [
                                                Text(
                                                  corevalues[index],
                                                  style: const TextStyle(
                                                      fontSize: 24,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.center,
                                                ),
                                                const Gap(50),
                                                SizedBox(
                                                  width: 400,
                                                  child: Text(
                                                    title[index],
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    maxLines: 8,
                                                    textAlign:
                                                        TextAlign.justify,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
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

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  List<String> texts = [
    "INNOVATION",
    "MUTUAL PARTNERSHIP",
    "SERVICE EXCELLENCE",
  ];
  List<EdgeInsets> paddings = [
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "INNOVATION"
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "MUTUAL PARTNERSHIP"
    const EdgeInsets.symmetric(
        vertical: 8.0, horizontal: 24.0), // Padding for "SERVICE EXCELLENCE"
  ];

  List<String> corevalues = [
    "LOVE FOR GOD",
    "LOVE FOR THE COUNTRY",
    "LOVE FOR THE PEOPLE",
  ];
  List<String> title = [
    "We show our love for God by striving for excellence in everything we do. We believe our works reflect our worship to God.",
    "We show our love for the country by investing in it. Starting a business is investing in the country. By creating value, generating jobs, and contributing to the economy, we make a positive impact on our society and the nation. We show our love for the country by honoring the values and traditions of the Filipino culture and sharing them with the world.",
    "We seek to imitate Christ’s love in loving the people thru transformed lives. We serve them with honesty, integrity, and compassion as they entrust us with their hopes and dreams. We thus strive and endeavor to create a better future for them and their children.",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            height: 450,
            child: Image.asset(
              'about-us/aboutusbg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Gap(50),
          SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 800,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(
                      height: 150,
                      child: Text(
                        'Elevate Your Success with We Lead: Tailored Solutions, Innovative Partnerships, Service Excellence.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF003B56),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  spacing: 150,
                  children: [
                    Wrap(
                      runSpacing: 50,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: texts.asMap().entries.map((entry) {
                        int index = entry.key;
                        String text = entry.value;

                        return Container(
                          padding: paddings[
                              index], // Use individual padding for each item
                          width:
                              250, // Same width for all boxes to maintain consistent size
                          alignment:
                              Alignment.center, // Center the text in each box
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 2.0), // Border color and width
                            borderRadius:
                                BorderRadius.circular(4.0), // Rounded corners
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20), // Add spacing between elements
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(
                  child: Column(
                    children: [
                      const Gap(80),
                      Column(
                        children: [
                          const Text(
                            'Why Choose us',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF003B56),
                            ),
                          ),
                          Container(
                            height: 10, // Thickness of the line
                            width: 100, // Adjust the width as needed
                            color: const Color.fromARGB(
                                255, 255, 102, 0), // Orange color for the line
                          ),
                        ],
                      ),
                      const Gap(70),
                      SizedBox(
                        child: Image.asset('about-us/whychooseus.jpg'),
                      )
                    ],
                  ),
                ),
                const Gap(50),
                Column(
                  children: [
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Column(
                              children: [
                                const Text(
                                  'Corporate Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF003B56),
                                  ),
                                ),
                                Container(
                                  height: 10, // Thickness of the line
                                  width: 100, // Adjust the width as needed
                                  color: const Color.fromARGB(255, 255, 102,
                                      0), // Orange color for the line
                                ),
                              ],
                            ),
                          ),
                          const Gap(40),
                          SizedBox(
                            child: Column(
                              children: [
                                Container(
                                  width: 500,
                                  height: 750,
                                  //padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Colors.black),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          SizedBox(
                                            height: 200,
                                            width: size.width,
                                            child: Image.asset(
                                              "about-us/briefstory.jpg",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top:
                                                      145), // Padding around the text
                                              child: Container(
                                                width: size.width,
                                                padding: const EdgeInsets.all(
                                                    8.0), // Padding inside the container
                                                color: Colors
                                                    .white70, // Background color with opacity
                                                child: const Text(
                                                  "Brief History",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 27,
                                                    color: Colors
                                                        .black, // Text color
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Gap(20),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 9.0,
                                            right:
                                                20.0), // Padding around the text
                                        child: Text(
                                          "We Lead Comtech is a company that specializes in providing products and solutions for power, energy, water, and software applications to some of the large companies locally and globally. Our power products include power transformers, automatic voltage regulators energy meters, and distribution transformers to name a few; Energy solutions are for providing renewable energy sources like Solar and Hydro; Water products cater to water treatment, water meters, etc. We also offer software solutions for enterprise like website development, point of sales, or anything that can deliver efficient and personalized customer service and engagement.\n\n"
                                          "At We Lead Comtech, we are committed to excellence in everything we do. Our core values of love for God, love for the people, and love for the country guide us in our work. We strive to be a company that not only delivers innovative solutions but also make a positive impact on the society.",
                                          style: TextStyle(
                                            fontSize: 15,
                                            height: 1.6,
                                            // Adjust line height if needed
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Gap(20),
                                Container(
                                  width: 500,
                                  height: 750,
                                  //padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Colors.black),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          SizedBox(
                                            height: 200,
                                            width: size.width,
                                            child: Image.asset(
                                              "about-us/briefstory.jpg",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top:
                                                      145), // Padding around the text
                                              child: Container(
                                                width: size.width,
                                                padding: const EdgeInsets.all(
                                                    8.0), // Padding inside the container
                                                color: Colors
                                                    .white70, // Background color with opacity
                                                child: const Text(
                                                  "About We Lead",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 27,
                                                    color: Colors
                                                        .black, // Text color
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Gap(20),
                                      const Padding(
                                        padding: EdgeInsets.all(
                                            16.0), // Padding around the text
                                        child: Text(
                                          "We Lead Comtech is a company that specializes in providing products and solutions for power, energy, water, and software applications to some of the large companies locally and globally. Our power products include power transformers, automatic voltage regulators energy meters, and distribution transformers to name a few; Energy solutions are for providing renewable energy sources like Solar and Hydro; Water products cater to water treatment, water meters, etc. We also offer software solutions for enterprise like website development, point of sales, or anything that can deliver efficient and personalized customer service and engagement.\n\n"
                                          "At We Lead Comtech, we are committed to excellence in everything we do. Our core values of love for God, love for the people, and love for the country guide us in our work. We strive to be a company that not only delivers innovative solutions but also make a positive impact on the society.",
                                          style: TextStyle(
                                            fontSize: 15,
                                            height: 1.4,
                                            // Adjust line height if needed
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(70),
                          Column(
                            children: [
                              const Text(
                                'Core Values',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF003B56),
                                ),
                              ),
                              Container(
                                height: 10, // Thickness of the line
                                width: 100, // Adjust the width as needed
                                color: const Color.fromARGB(255, 255, 102,
                                    0), // Orange color for the line
                              ),
                            ],
                          ),
                          const Gap(50),
                          //core values
                          SizedBox(
                            child: Column(
                              children:
                                  List.generate(corevalues.length, (index) {
                                return Wrap(
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(
                                      height: 300,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 500,
                                            child: Column(
                                              children: [
                                                Text(
                                                  corevalues[index],
                                                  style: const TextStyle(
                                                      fontSize: 24,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.center,
                                                ),
                                                const Gap(50),
                                                SizedBox(
                                                  width: 400,
                                                  child: Text(
                                                    title[index],
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    maxLines: 8,
                                                    textAlign:
                                                        TextAlign.justify,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
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
