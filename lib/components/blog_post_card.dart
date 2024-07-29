import 'package:blogapp/constants.dart'; // Ensure this file is properly set up
import 'package:blogapp/models/Blog.dart';
import 'package:blogapp/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the correct package for SVGs

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.78,
          child: Image.asset(blog.image, fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'design'.toUpperCase(),
                    style: TextStyle(
                      color: kDarkBlackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: kDefaultPadding),
                  Text(
                    blog.date,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding),
              Text(
                blog.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: Responsive.isDesktop(context) ? 32 : 24,
                  fontFamily: 'Raleway',
                  height: 1.3,
                  color: kDarkBlackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: kDefaultPadding / 2),
              Text(
                blog.description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(height: 1.5),
              ),
              const SizedBox(height: kDefaultPadding),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      padding:
                          const EdgeInsets.only(bottom: kDefaultPadding / 4),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: kPrimaryColor, width: 3),
                        ),
                      ),
                      child: Text(
                        'Read more',
                        style: TextStyle(
                          color: kDarkBlackColor,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon:
                        SvgPicture.asset('assets/icons/feather_thumbs-up.svg'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                        'assets/icons/feather_message-square.svg'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/feather_share-2.svg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
