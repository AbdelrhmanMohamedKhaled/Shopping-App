import 'package:flutter/material.dart';
import 'package:shop_app/constraints.dart';
import 'package:shop_app/models/product.dart';

import './product_title_with_image.dart';
import './color_with_size.dart';
import './description.dart';
import './add_to_cart.dart';
import './counter_with_fav_btn.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //to provide total height and width
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  // height: 500,
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorsWithSize(product: product),
                      const SizedBox(height: kDefaultPadding / 2,),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 2,),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPadding / 2,),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


