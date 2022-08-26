// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:designs/screens/screen_five.dart';
import 'package:designs/screens/screen_four.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// ignore: must_be_immutable
class ScreenThird extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  ScreenThird({Key? key}) : super(key: key);
  Color lightGrey = const Color.fromARGB(255, 66, 66, 66);
  Color lightGrey2 = const Color.fromARGB(150, 66, 66, 66);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//App bar start
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('Payments'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return ScreenFour();
                }),
              );
            },
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
//App bar end

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //first box started
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 231, 231, 230),
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Transaction Limit',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'A free limit up to which you will receive',
                        style: TextStyle(color: lightGrey, fontSize: 15),
                      ),
                      Text(
                        'the online payments directly in your bank',
                        style: TextStyle(color: lightGrey, fontSize: 15),
                      ),
                      const SizedBox(height: 15),
                      LinearPercentIndicator(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        backgroundColor:
                            const Color.fromARGB(255, 231, 231, 230),
                        progressColor: Colors.blue[800],
                        percent: 0.3,
                        barRadius: const Radius.circular(5),
                        lineHeight: 7,
                      ),
                      Text(
                        '36,668 left out of ₹50,000',
                        style: TextStyle(color: lightGrey2, fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style:
                            ElevatedButton.styleFrom(primary: Colors.blue[800]),
                        child: const Text('Increase limit'),
                      ),
                    ],
                  ),
                ),
              ),
              //first box end
              //Second Started
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Default Method',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Online Payments",
                        style: TextStyle(fontSize: 14, color: lightGrey2),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: lightGrey2,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Payment Profile',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Bank Account",
                        style: TextStyle(fontSize: 14, color: lightGrey2),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: lightGrey2,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1.5,
              ),

              //third section started
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Payments Overview',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Life Time",
                        style: TextStyle(
                          fontSize: 14,
                          color: lightGrey2,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: lightGrey2,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 239, 116, 30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 23, right: 23, top: 17, bottom: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'AMOUNT ON HOLD',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '₹0',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 22, 179, 26),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 23, right: 23, top: 17, bottom: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'AMOUNT RECEIVED',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '₹13,332',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              //fourth section started
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Transactions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //rounded three container
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 231, 231, 230),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                      child: Text(
                        'On hold',
                        style: TextStyle(fontSize: 15, color: lightGrey),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[800],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: Text(
                        'Payouts(15)',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 231, 231, 230),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                      child: Text(
                        'Refunds',
                        style: TextStyle(fontSize: 15, color: lightGrey),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  controller: _controller,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(25), // Image radius
                              child:
                                  Image.asset(images[index], fit: BoxFit.cover),
                            ),
                          ),
                          title: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      order[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      amount[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      date1[index],
                                      style: TextStyle(
                                          fontSize: 13, color: lightGrey2),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Colors.green,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Successful",
                                            style: TextStyle(color: lightGrey2),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                  separatorBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bottomText[index],
                          style: TextStyle(
                              color: lightGrey2,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        const Divider()
                      ],
                    );
                  }),
                  itemCount: order.length)
            ],
          ),
        ),
      ),
    );
  }

  List<String> order = [
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
    'Order #1369633',
    'Order #1688068',
    'Order #1370125',
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
    'Order #1369633',
    'Order #1688068',
    'Order #1370125',
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
  ];
  List<String> date1 = [
    'Jul 12, 01:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 12, 11:29 AM',
    'Aug 12, 12:06 PM',
    'Jul 12, 01:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 12, 11:29 AM',
    'Aug 12, 12:06 PM',
    'Jul 12, 01:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 12, 11:29 AM',
    'Aug 12, 12:06 PM',
  ];
  List<String> amount = [
    '₹799',
    '₹397.4',
    '₹686.42',
    '₹1123.5',
    '₹1722.75',
    '₹799',
    '₹397.4',
    '₹686.42',
    '₹1123.5',
    '₹1722.75',
    '₹799',
    '₹397.4',
    '₹686.42',
    '₹1123.5',
    '₹1722.75',
  ];
  List<String> bottomText = [
    '₹799 deposited to:58860200000138',
    '₹397.4 deposited to:58860200000138',
    '₹686.42 deposited to:58860200000138',
    '₹1123.5 deposited to:58860200000138',
    '₹1722.75 deposited to:58860200000138',
    '₹799 deposited to:58860200000138',
    '₹397.4 deposited to:58860200000138',
    '₹686.42 deposited to:58860200000138',
    '₹1123.5 deposited to:58860200000138',
    '₹1722.75 deposited to:58860200000138',
    '₹799 deposited to:58860200000138',
    '₹397.4 deposited to:58860200000138',
    '₹686.42 deposited to:58860200000138',
    '₹1123.5 deposited to:58860200000138',
    '₹1722.75 deposited to:58860200000138',
  ];
  List<String> images = [
    'assets/images/tshirt1.jpg',
    'assets/images/tshirt2.jpg',
    'assets/images/tshirt3.jpg',
    'assets/images/cup.jpg',
    'assets/images/tshirt1.jpg',
    'assets/images/tshirt2.jpg',
    'assets/images/tshirt3.jpg',
    'assets/images/cup.jpg',
    'assets/images/tshirt1.jpg',
    'assets/images/tshirt2.jpg',
    'assets/images/tshirt3.jpg',
    'assets/images/cup.jpg',
    'assets/images/tshirt1.jpg',
    'assets/images/tshirt2.jpg',
    'assets/images/tshirt3.jpg',
  ];
}
