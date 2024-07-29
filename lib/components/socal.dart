import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blogapp/constants.dart';

class Socal extends StatelessWidget {
  const Socal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/behance-alt.svg'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: SvgPicture.asset('assets/icons/feather_dribbble.svg'),
        ),
        SvgPicture.asset('assets/icons/feather_twitter.svg'),
        const SizedBox(width: kDefaultPadding),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding,
            ),
          ),
          child: const Text(
            'Lets Talk',
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
