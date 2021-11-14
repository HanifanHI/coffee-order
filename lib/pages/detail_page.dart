import 'dart:math';

import '/shared/theme.dart';
import '/widgets/size_widget.dart';
import '/widgets/star.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * HEADER
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon-right.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon-titik.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // * MENU DETAIL
    Widget menuDetail() {
      return Container(
        child: Column(
          children: [
            Image.asset(
              'assets/image-1.png',
              width: 192,
              height: 243,
            ),
            Text(
              'Caramel Macchiato',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    // * SIZE
    Widget size() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIZE',
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizeWidget(
                  size: 'S',
                  isChecked: true,
                ),
                SizeWidget(
                  size: 'M',
                  isChecked: false,
                ),
                SizeWidget(
                  size: 'L',
                  isChecked: false,
                ),
              ],
            )
          ],
        ),
      );
    }

    // * COMBO
    Widget combo() {
      return Container(
        margin: EdgeInsets.only(bottom: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'COMBO',
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/image-2.png',
                    width: 49,
                    height: 28,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CROISSANT',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            StarWidget(
                              rating: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '4.0',
                              style: lightGreyTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/icon-add.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    // * BUY NOW
    Widget buyNow() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 67,
              height: 67,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: kPrimaryColor)),
                      child: Center(
                        child: Image.asset(
                          'assets/icon-cart.png',
                          width: 17,
                          height: 20,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        border: Border.all(color: kPrimaryColor),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '3',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 220,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kPrimaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ADD TO BAG',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 2,
                    child: Container(
                      width: 27.5,
                      height: 1,
                      color: kWhiteColor,
                    ),
                  ),
                  Text(
                    '\$ 5.99',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [header(), menuDetail(), size(), combo(), buyNow()],
          ),
        ),
      ),
    );
  }
}
