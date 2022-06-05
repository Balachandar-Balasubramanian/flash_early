import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/widgets/post.dart';
import 'package:turf_flash/services/post_stream.dart';

List<post> posts = [];

class home_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Image> carousel_ads = [
      Image.asset("images/ad1.jpg"),
      Image.asset("images/ad2.jpg"),
      Image.asset("images/ad3.jpg"),
      Image.asset("images/ad4.jpg"),
      Image.asset("images/ad5.jpg"),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: carousel_ads,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
          ),
          PostsStream(isMe: false),
        ],
      ),
    );
  }
}
