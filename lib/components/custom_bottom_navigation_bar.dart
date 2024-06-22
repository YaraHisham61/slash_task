import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash/components/custom_text.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: TopIndicator(),
      tabs: const <Widget>[
        Tab(
          icon: Icon(
            FontAwesomeIcons.house,
            color: Colors.black,
          ),
          child: CustomText(text: "Home"),
        ),
        Tab(
          icon: Icon(
            FontAwesomeIcons.heart,
            color: Colors.black,
          ),
          child: CustomText(text: "Favorites"),
        ),
        Tab(
          icon: Icon(
            FontAwesomeIcons.cartShopping,
            color: Colors.black,
          ),
          child: CustomText(text: "My Cart"),
        ),
        Tab(
          icon: Icon(
            FontAwesomeIcons.circleUser,
            color: Colors.black,
          ),
          child: CustomText(text: "Profile"),
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
