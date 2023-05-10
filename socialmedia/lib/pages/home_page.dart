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
                  dotColor: Colors.pink.shade100),
            ),
            //3 buttons send, pay, bills
            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //send
                  Column(
                    children: [
                      Container(
                        height: 80,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Image.asset('lib/icons/transaction.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Send',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600]),
                      ),
                    ],
                  ),

                  const SizedBox(
                    width: 25,
                  ),

                  //pay
                  Column(
                    children: [
                      Container(
                        height: 80,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Image.asset('lib/icons/pay-per-click.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pay',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600]),
                      ),
                    ],
                  ),

                  const SizedBox(
                    width: 25,
                  ),

                  //bills
                  Column(
                    children: [
                      Container(
                        height: 80,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Image.asset('lib/icons/bill.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Bills',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600]),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //column

            const SizedBox(
              height: 25,
            ),

            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ListTile(
                    leading: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset('lib/icons/analysis.png')),
                    title: const Text('Statistics'),
                    subtitle: const Text('Payments and Income'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense: true,
                  ),
                ),
                const SizedBox(height: 10,),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ListTile(
                    leading: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset('lib/icons/analysis.png')),
                    title: const Text('Statistics'),
                    subtitle: const Text('Payments and Income'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense: true,
                  ),
                ),
                 
              ],
            )
          ],
        ),
      ),
    );
  }
}
