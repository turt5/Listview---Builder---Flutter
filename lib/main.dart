import 'package:flutter/material.dart';
import 'package:flutter_listview_and_builder/post.dart';
import 'package:flutter_listview_and_builder/story.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List _posts = ['Leo Messi', 'Cristiano Ronaldo', 'Kylian Mbappe', 'Earling Halland'];
  final List _post_images=['assets/images/messi.jpg','assets/images/ronaldo.jpg','assets/images/mbappe.jpg','assets/images/halland.jpg'];
  final List _pp_images=['assets/images/messi_dp.jpg','assets/images/ronaldo_dp.jpg','assets/images/mbappe_dp.jpg','assets/images/halland_dp.jpg'];
  final List _story = ['Professor', 'Berlin', 'Tokyo', 'Rio', 'Denver'];
  final List _story_dp = ['assets/images/professor_dp.jpg', 'assets/images/berlin_dp.jpg', 'assets/images/tokyo_dp.jpg', 'assets/images/rio_dp.jpg', 'assets/images/denver_dp.jpg'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 10),

              child: ListView.builder(
                  itemCount: _story.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Story(
                      child: _story[index],
                      dp: _story_dp[index],
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return Post(child: _posts[index],post_img: _post_images[index],profile_pic: _pp_images[index],);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
