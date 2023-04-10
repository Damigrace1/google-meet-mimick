import 'package:flutter/material.dart';
import 'package:meetmimick/component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 36),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Text('Team Sync'), Icon(Icons.arrow_right)],
        ),
        actions: const [
          Icon(Icons.refresh),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.volume_up),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Image.asset(
                        'lib/images/profile_img.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        left: 7,
                        bottom: 7,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'White Developer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Participants(img: 'p1'),
                  Participants(img: 'p2'),
                  Participants(img: 'p3'),
                  Participants(img: 'p4'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.call_end,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 58, 58, 61),
                  child: Icon(
                    Icons.video_camera_front_sharp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 58, 58, 61),
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 58, 58, 61),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
