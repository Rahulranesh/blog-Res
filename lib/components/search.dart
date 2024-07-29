import 'package:blogapp/components/side_bar_container.dart';
import 'package:blogapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: 'Search',
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: SvgPicture.asset('assets/icons/feather_search.svg'),
          ),
          hintText: 'Type here...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 2),
            ),
            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
          ),
        ),
      ),
    );
  }
}
