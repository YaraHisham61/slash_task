import 'package:flutter/material.dart';
import 'package:slash/components/custom_text.dart';
import 'package:slash/models/product_model.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key, required this.data, this.isWeb = false});

  final ProductModel data;
  final bool isWeb;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.isWeb
          ? const EdgeInsets.symmetric(horizontal: 10.0)
          : const EdgeInsets.symmetric(horizontal: 5.0),
      child: SizedBox(
        width: widget.isWeb
            ? MediaQuery.of(context).size.width * 0.15
            : MediaQuery.of(context).size.width * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: widget.isWeb
                      ? MediaQuery.of(context).size.height * 0.2
                      : MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(widget.data.imagePath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0, top: 2.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: const Color.fromARGB(238, 238, 238, 238),
                      child: isFav
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 20.0,
                            )
                          : const Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.black,
                              size: 20.0,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: CustomText(
                text: widget.data.name,
                color: Colors.black87,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "EGP ${widget.data.price}",
                  color: Colors.black87,
                  weight: FontWeight.w600,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/logo.png"),
                      radius: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.add_circle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
