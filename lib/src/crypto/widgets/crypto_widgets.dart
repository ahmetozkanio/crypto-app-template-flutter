import 'package:flutter/material.dart';

SizedBox cryptoCardWidget(
  bool selected,
  String image,
  String cryptoName,
  String crptoShortName,
  String price,
  String total,
  String amountOfChange,
  bool increaseDecrase,
) {
  return SizedBox(
    height: 124.0,
    child: Card(
      color: selected ? const Color.fromARGB(255, 0, 144, 255) : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      image,
                      width: 32.0,
                    ),
                    Text(cryptoName),
                  ],
                ),
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_horiz,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '\$$price',
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  "$total $crptoShortName ",
                  style: const TextStyle(
                    color: Color.fromARGB(120, 95, 100, 102),
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  increaseDecrase ? "+ $amountOfChange%" : "- $amountOfChange%",
                  style: const TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

SizedBox minCryptoWidget() {
  return SizedBox(
      width: double.infinity,
      height: 78.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/crypto_image.png",
                  width: 56.0,
                ),
                const Text(
                  'BNB',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '\$371.50',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  "+4.9%",
                  style: TextStyle(
                    color: Color.fromARGB(200, 158, 158, 158),
                  ),
                ),
              ],
            ),
          )
        ]),
      ));
}

IconButton iconButtonWidget(bool active, IconData iconData) {
  return IconButton(
    onPressed: null,
    icon: Icon(
      iconData,
      color: active ? Colors.blue : null,
    ),
  );
}

Widget tabBarWidget(
    BuildContext context, IconData iconData, String title, bool active) {
  return InkWell(
    child: Row(
      children: [
        Icon(
          iconData,
          color: active ? Colors.blue : Colors.grey,
        ),
        Text(
          title,
          style: TextStyle(
            color: active ? Colors.blue : Colors.grey,
          ),
        ),
      ],
    ),
  );
}
