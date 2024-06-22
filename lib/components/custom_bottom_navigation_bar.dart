import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash/components/custom_text.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicator: TopIndicator(),
      tabs: <Widget>[
        Tab(
          icon: Icon(
            FontAwesomeIcons.house,
            color: Colors.black,
          ),
          child: CustomText(
            text: "Home",
            color: _tabController.index == 0 ? Colors.black : Colors.black87,
            weight:
                _tabController.index == 0 ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        Tab(
          icon: Icon(
            FontAwesomeIcons.heart,
            color: Colors.black,
          ),
          child: CustomText(
            text: "Favorites",
            color: _tabController.index == 1 ? Colors.black : Colors.black87,
            weight:
                _tabController.index == 1 ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        Tab(
          icon: Icon(
            FontAwesomeIcons.cartShopping,
            color: Colors.black,
          ),
          child: CustomText(
            text: "My Cart",
            color: _tabController.index == 2 ? Colors.black : Colors.black87,
            weight:
                _tabController.index == 2 ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        Tab(
          icon: Icon(
            FontAwesomeIcons.circleUser,
            color: Colors.black,
          ),
          child: CustomText(
            text: "Profile",
            color: _tabController.index == 3 ? Colors.black : Colors.black87,
            weight:
                _tabController.index == 3 ? FontWeight.w600 : FontWeight.w400,
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
