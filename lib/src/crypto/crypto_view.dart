import 'package:flutter/material.dart';
import './crypto_view_model.dart';

class CryptoView extends CryptoViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: ListView(
        children: [
          SizedBox(
            height: 48.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/crypto_image.png",
                          width: 32.0,
                        ),
                        Text(
                          "BANK",
                          style: TextStyle(fontSize: 24.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    Column(
                      children: [
                        cryptoCardWidget(true, "assets/crypto_image.png",
                            "Bitcoin", "BTC", "37851.30", "3.5", "3.5", true),
                        cryptoCardWidget(false, "assets/crypto_image.png",
                            "Ethereum", "ETC", "37851.30", "3.5", "3.5", true),
                        cryptoCardWidget(false, "assets/crypto_image.png",
                            "BNB", "BNB", "37851.30", "3.5", "3.5", false),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/crypto_image.png",
                                width: 24.0,
                              ),
                              Text(
                                "Overview",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24.0,
                        ),
                        InkWell(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/crypto_image.png",
                                width: 24.0,
                              ),
                              Text(
                                "Assets",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24.0,
                        ),
                        InkWell(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/crypto_image.png",
                                width: 24.0,
                              ),
                              Text(
                                "Market",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0.0,
                                bottom: 0.0,
                                child: Icon(Icons.sms),
                              ),
                              Positioned(
                                  right: 0.0,
                                  top: 0.0,
                                  child: Container(
                                    width: 18,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '5',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24.0,
                        ),
                        ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(28.0),
                            child: Image.asset('assets/profile_photo.jpg',
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                    Container(
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Exchange'),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Text(
                                  'Exchange',
                                  style: TextStyle(
                                      fontSize: 11.0, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.circular(
                                      16.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 4.0,
                                        ),
                                        width: 190,
                                        child: Expanded(
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: "3.0",
                                              isDense: true,
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(fontSize: 12.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: DropdownButton(
                                          items: [],
                                          onChanged: null,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  Container cryptoCardWidget(
    bool selected,
    String image,
    String cryptoName,
    String crptoShortName,
    String price,
    String total,
    String amountOfChange,
    bool increaseDecrase,
  ) {
    return Container(
      height: 124.0,
      width: 164,
      child: Card(
        color: selected ? Color.fromARGB(255, 0, 144, 255) : null,
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
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '\$$price',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    "$total $crptoShortName ",
                    style: TextStyle(
                      color: Color.fromARGB(120, 95, 100, 102),
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    increaseDecrase
                        ? "+ $amountOfChange%"
                        : "- $amountOfChange%",
                    style: TextStyle(
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
}
