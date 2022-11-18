import 'package:flutter/material.dart';

Center supportButtonWidget() {
  return Center(
    child: ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14));
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return Colors.blue;
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.circle),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'Exchange',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Icon(Icons.arrow_right),
          ],
        ),
      ),
    ),
  );
}
