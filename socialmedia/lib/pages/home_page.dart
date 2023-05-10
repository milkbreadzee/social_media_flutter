import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:socialmedia/components/cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //card controler
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.add)),
                ],
              ),
            ),

            const SizedBox(
              height: 25.0,
            ),
            //mycards

            Container(
              height: 200,
              child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5250.45,
                      cardnumber: 12345678,
                      expmonth: 10,
                      expyear: 25,
                      color: Colors.pink[100],
                    ),
                    MyCard(
                      balance: 6350.38,
                      cardnumber: 97463763,
                      expmonth: 3,
                      expyear: 24,
                      color: Colors.purple[100],
                    ),
                    MyCard(
                      balance: 8376.00,
                      cardnumber: 12345678,
                      expmonth: 10,
                      expyear: 25,
                      color: Colors.green[100],
                    ),
                    MyCard(
                      balance: 234.78,
                      cardnumber: 12345678,
                      expmonth: 10,
                      expyear: 25,
                      color: Colors.red[100],
                    ),
                  ]),
            ),

            SizedBox(
              height: 25,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.pink.shade400,
                radius: 25.0,
                dotWidth: 8.0,
                dotHeight: 8.0,
                dotColor: Colors.pink.shade100
              ),
            )
            //3 buttons send, pay, bills
            
            //column
          ],
        ),
      ),
    );
  }
}
