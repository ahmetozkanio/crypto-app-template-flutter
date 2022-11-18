import 'package:flutter/material.dart';

SizedBox exchangeWidget(BuildContext context) {
  return SizedBox(
      width: 350,
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
              const Text('Exchange'),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Exchange',
                style: TextStyle(fontSize: 11.0, color: Colors.grey),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 4.0,
                      ),
                      width: 195.0,
                      child: const Expanded(
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
                        items: const [],
                        onChanged: null,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Exchange',
                    style: TextStyle(fontSize: 11.0, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.change_circle_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 4.0,
                      ),
                      width: 195.0,
                      child: const Expanded(
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
                        items: const [],
                        onChanged: null,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              const Text(
                '1 BTC = 7.8 ETH',
                style: TextStyle(fontSize: 11.0, color: Colors.grey),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape:
                        MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                      return RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14));
                    }),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.blue;
                      },
                    ),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 76),
                    child: Text(
                      'Exchange',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
}
