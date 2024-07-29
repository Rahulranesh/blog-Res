import 'package:blogapp/components/blog_post_card.dart';
import 'package:blogapp/components/categories.dart';
import 'package:blogapp/components/recent_posts.dart';
import 'package:blogapp/components/search.dart';
import 'package:blogapp/components/side_bar_container.dart';
import 'package:blogapp/constants.dart';
import 'package:blogapp/models/Blog.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(
                blog: blogPosts[index],
              ),
            ),
          ),
        ),
        SizedBox(
          width: kDefaultPadding,
        ),
        // Sidebar
        Expanded(
          child: Column(
            children: [
              Search(),
              SizedBox(
                height: kDefaultPadding / 2, // Adjust this value as needed
              ),
              Categories(),
              SizedBox(
                height: kDefaultPadding,
              ),
              SideBarContainer(
                title: 'Recent Post',
                child: Column(
                  children: [
                    RecentPosts(
                      image: 'assets/images/recent_1.png',
                      title: 'The Secret Formula to Online Workshops',
                      press: () {},
                    ),
                    SizedBox(height: kDefaultPadding),
                    RecentPosts(
                      image: 'assets/images/recent_2.png',
                      title: 'The Maximized Tool of this Generation',
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
