import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:simple_website/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    Images.first, // Replace with your image URLs
    Images.second,
    Images.third,
  ];
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text('dicover'.tr,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: imgList
                    .map((item) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(item,
                                  fit: BoxFit.cover, width: 1200),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(height: 20),
              Text(
                'Some Additional Content',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Click Me!'),
              ),
              // Add more elements here as needed

              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.green)),
                child: Row(
                  children: [
                    Expanded(
                      child: MouseRegion(
                        onEnter: (_) => setState(() => isHovered1 = true),
                        onExit: (_) => setState(() => isHovered1 = false),
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: isHovered1 ? Colors.grey : Colors.red,
                              ),
                            ),
                            AnimatedOpacity(
                              opacity: isHovered1 ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 300),
                              child: Center(
                                child: Text(
                                  'Hovered 1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: MouseRegion(
                        onEnter: (_) => setState(() => isHovered2 = true),
                        onExit: (_) => setState(() => isHovered2 = false),
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey,
                              ),
                            ),
                            AnimatedOpacity(
                              opacity: isHovered2 ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 300),
                              child: Center(
                                child: Text(
                                  'Hovered 2',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: MouseRegion(
                        onEnter: (_) => setState(() => isHovered3 = true),
                        onExit: (_) => setState(() => isHovered3 = false),
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey,
                              ),
                            ),
                            AnimatedOpacity(
                              opacity: isHovered3 ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 300),
                              child: Center(
                                child: Text(
                                  'Hovered 3',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
