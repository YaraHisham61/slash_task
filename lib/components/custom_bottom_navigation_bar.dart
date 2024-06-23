import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash/components/custom_text.dart';

class CustomNavigationBar extends StatefulWidget {
  final TabController tabController;

  const CustomNavigationBar({super.key, required this.tabController});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() {
      setState(() {}); // Trigger rebuild when tab changes
    });
  }

  @override
  void dispose() {
    widget.tabController.removeListener(() {
      setState(() {});
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      indicator: TopIndicator(),
      tabs: <Widget>[
        Tab(
          icon: const Icon(
            FontAwesomeIcons.house,
            color: Colors.black,
          ),
          child: CustomText(
            text: "Home",
            color:
                widget.tabController.index == 0 ? Colors.black : Colors.black87,
            weight: widget.tabController.index == 0
                ? FontWeight.w600
                : FontWeight.w400,
          ),
        ),
        Tab(
          icon: const Icon(
            FontAwesomeIcons.heart,
            color: Colors.black,
          ),
          child: CustomText(
            text: "Favorites",
            color:
                widget.tabController.index == 1 ? Colors.black : Colors.black87,
            weight: widget.tabController.index == 1
                ? FontWeight.w600
                : FontWeight.w400,
          ),
        ),
        Tab(
          icon: const Icon(
            FontAwesomeIcons.cartShopping,
            color: Colors.black,
          ),
          child: CustomText(
            text: "My Cart",
            color:
                widget.tabController.index == 2 ? Colors.black : Colors.black87,
            weight: widget.tabController.index == 2
                ? FontWeight.w600
                : FontWeight.w400,
          ),
        ),
        Tab(
          icon: const Icon(
            FontAwesomeIcons.circleUser,
            color: Colors.black,
          ),
          child: CustomText(
            text: "Profile",
            color:
                widget.tabController.index == 3 ? Colors.black : Colors.black87,
            weight: widget.tabController.index == 3
                ? FontWeight.w600
                : FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), paint);
  }
}
