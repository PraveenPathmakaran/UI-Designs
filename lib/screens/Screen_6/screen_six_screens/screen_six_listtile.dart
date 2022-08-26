// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenSixListtile extends StatelessWidget {
  int index;
  ScreenSixListtile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)), //here
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 199, 195, 195),
                  offset: Offset(0, 0),
                  blurRadius: 2.0)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          img[index],
                          height: 95,
                          width: 95,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name1[index],
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        const Text('1 piece'),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(price[index],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800)),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'In stock',
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                      ],
                    ),
                    Container(
                      //color: Colors.red,
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,

                          // ignore: prefer_const_constructors
                          children: [
                            const Icon(Icons.more_vert),
                            const SizedBox(
                              height: 25,
                            ),
                            Switch(value: true, onChanged: (_) {})
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.share_outlined),
                      Text(
                        'Share Product',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<String> img = [
    'assets/images/tshirt3.jpg',
    'assets/images/tshirt4.jpg',
    'assets/images/tshirt5.jpg',
    'assets/images/cup.jpg',
    'assets/images/tshirt2.jpg',
    'assets/images/tshirt1.jpg',
    'assets/images/tshirt3.jpg',
    'assets/images/tshirt4.jpg',
  ];
  List<String> name1 = [
    'Couch Potato | Women...',
    'Couch Potato | Men | Bl...',
    'Combo Blahst 1 | Pack...',
    'Mug | Explore...',
    'Kids Combo Blahst      ',
    'Combo Blahst 1 | Pack...',
    'Mug | Orchard...',
    'I See Combo Pack',
  ];
  List<String> price = [
    '₹799',
    '₹799',
    '₹799',
    '₹799',
    '₹799',
    '₹799',
    '₹799',
    '₹799',
  ];
}
