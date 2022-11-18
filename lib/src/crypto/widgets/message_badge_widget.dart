import 'package:flutter/material.dart';

SizedBox messageBageWidget() {
  return SizedBox(
    width: 30.0,
    height: 30.0,
    child: Stack(
      children: [
        const Positioned(
          left: 0.0,
          bottom: 0.0,
          child: Icon(Icons.sms),
        ),
        Positioned(
            right: 0.0,
            top: 0.0,
            child: Container(
              width: 18,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: const Center(
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
  );
}
