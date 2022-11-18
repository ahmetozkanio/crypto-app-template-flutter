import 'package:flutter/material.dart';

import './crypto_view_model.dart';
import 'widgets/buttons.dart';
import 'widgets/crypto_buy_receive.dart';
import 'widgets/crypto_widgets.dart';
import 'widgets/exchanged_widget.dart';
import 'widgets/message_badge_widget.dart';
import 'widgets/profile_widget.dart';

class CryptoView extends CryptoViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: cryptoBody(context),
    ));
  }

  ListView cryptoBody(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 48.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            leftColumn(context),
            middleColumn(context),
            rightColumn(context)
          ],
        ),
      ],
    );
  }

  SizedBox leftColumn(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/crypto_image.png",
                width: 32.0,
              ),
              const Text(
                "BANK",
                style: TextStyle(fontSize: 24.0),
              ),
            ],
          ),
          const SizedBox(
            height: 82,
          ),
          Column(
            children: [
              cryptoCardWidget(true, "assets/crypto_image.png", "Bitcoin",
                  "BTC", "37851.30", "3.5", "3.5", true),
              cryptoCardWidget(false, "assets/crypto_image.png", "Ethereum",
                  "ETC", "37851.30", "3.5", "3.5", true),
              cryptoCardWidget(false, "assets/crypto_image.png", "BNB", "BNB",
                  "37851.30", "3.5", "3.5", false),
              const SizedBox(
                height: 64.0,
              ),
              supportButtonWidget(),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox middleColumn(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(children: [
          Row(
            children: [
              tabBarWidget(context, Icons.data_exploration, 'Overview', true),
              const SizedBox(
                width: 24.0,
              ),
              tabBarWidget(context, Icons.perm_device_information_sharp,
                  'Overview', false),
              const SizedBox(
                width: 24.0,
              ),
              tabBarWidget(
                  context, Icons.directions_railway, 'Overview', false),
            ],
          ),
          const SizedBox(
            height: 96,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '3.5 BTC',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    "\$12845.80",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  iconButtonWidget(true, Icons.access_time_filled_sharp),
                  iconButtonWidget(false, Icons.local_fire_department_sharp),
                  iconButtonWidget(false, Icons.data_object),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 128.0,
          ),
          const Center(
            child: Text(
              'CHART',
            ),
          ),
          const SizedBox(
            height: 128.0,
          ),
          cryptoBuyWidget(
              true, 'Cardano', 'ADA', 'Buy', '2.2.2022 9:45 PM', '\$5.12'),
          cryptoBuyWidget(false, 'Ethereum', 'ETH', 'Receive',
              '2.2.2022 9:45 PM', '\$5.12'),
          cryptoBuyWidget(
              false, 'Binance', 'BNB', 'Buy', '2.2.2022 9:45 PM', '\$5.12'),
        ]));
  }

  SizedBox rightColumn(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              messageBageWidget(),
              const SizedBox(
                width: 24.0,
              ),
              profileWidget()
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          exchangeWidget(context),
          const SizedBox(
            height: 32.0,
          ),
          minCryptoWidget(),
          minCryptoWidget(),
          minCryptoWidget(),
        ],
      ),
    );
  }
}
