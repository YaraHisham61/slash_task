import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.isWeb = false,
  });
  final bool isWeb;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: isWeb
              ? MediaQuery.of(context).size.width * 0.75
              : MediaQuery.of(context).size.width * 0.7,
          child: Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.01,
            ),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                isDense: true,
                fillColor: const Color.fromARGB(15, 0, 0, 0),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                focusColor: Colors.black,
                prefixIcon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                ),
                prefixIconColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.black;
                  }

                  return Colors.grey;
                }),
                hintText: "Search here..",
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(15, 0, 0, 0)),
            padding: isWeb
                ? MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(20.0))
                : MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(16.0)),
          ),
          child: const Icon(
            FontAwesomeIcons.sliders,
            color: Colors.black38,
            size: 20.0,
          ),
        ),
      ],
    );
  }
}
