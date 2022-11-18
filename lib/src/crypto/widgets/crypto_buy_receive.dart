import 'package:flutter/material.dart';

SizedBox cryptoBuyWidget(
  bool active,
  String title,
  String subtitle,
  String buyReceive,
  String dateTime,
  String price,
) {
  return SizedBox(
      height: 64.0,
      child: Card(
          color: active ? Colors.black : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/crypto_image.png",
                        width: 32,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(title),
                      const SizedBox(
                        width: 3.0,
                      ),
                      Text(subtitle),
                    ],
                  ),
                  Text(buyReceive),
                  Text(dateTime),
                  Text(price)
                ],
              ))));
}
