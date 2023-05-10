import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardnumber;
  final int expmonth;
  final int expyear;
  final color;

  const MyCard(
      {super.key,
      required this.balance,
      required this.cardnumber,
      required this.expmonth,
      required this.expyear,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Balance',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardnumber.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  expmonth.toString() + '/' + expyear.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
