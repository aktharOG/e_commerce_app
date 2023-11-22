// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce_app/helpers/custom_svg_icon.dart';
import 'package:e_commerce_app/theme/themeData.dart';
import 'package:e_commerce_app/widgets/headingText.dart';

class ProductItem extends StatelessWidget {
  final String title, brand, price, image;
  final bool isFavorite;
  const ProductItem({
    Key? key,
    required this.title,
    required this.brand,
    required this.price,
    required this.image,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xffEDEDED),
          borderRadius: BorderRadius.circular(15)),
      height: 240,
      width: 200,
      child: Stack(
        children: [
          const SvgIcon(
            path: "bg_p_designIC",
            size: 150,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                image,
                height: 130,
                width: 130,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                      text: brand,
                      fontSize: 12,
                      fontFamily: "KronaOne",
                    ),
                    HeadingText(
                      text: title,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HeadingText(
                          text: price,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        CircleAvatar(
                            radius: 18,
                            backgroundColor: primaryColor,
                            child: SvgIcon(
                              path: "favoriteIC",
                              color: isFavorite ? Colors.red : Colors.white,
                              size: 18,
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
