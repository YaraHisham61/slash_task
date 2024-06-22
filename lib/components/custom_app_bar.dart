import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash/components/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.isWeb = false,
  });
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: "Slash.",
            weight: FontWeight.w700,
            size: isWeb ? 30 : 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: Icon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.black,
                  size: isWeb ? 30 : null,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Nasr City",
                    size: isWeb ? 20 : 16,
                    color: Colors.black87,
                  ),
                  CustomText(
                    text: "Cairo",
                    weight: FontWeight.w600,
                    size: isWeb ? 20 : 16,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.angleDown,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.bell,
              color: Colors.black,
              size: isWeb ? 35 : 30,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
