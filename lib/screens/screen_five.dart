// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:designs/screens/Screen_6/screen_six.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenFive extends StatelessWidget {
  Color lightGrey = const Color.fromARGB(255, 66, 66, 66);
  Color lightGrey2 = const Color.fromARGB(255, 112, 108, 108);
  Color lightGrey3 = const Color.fromARGB(255, 199, 198, 198);
  ScreenFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: const Text('Order #1688068'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return ScreenSix();
                }),
              );
            },
            icon: const Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
//first section
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'May 31, 05:42 PM',
                    style: TextStyle(
                        fontSize: 15,
                        color: lightGrey,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 15,
                          color: Color.fromARGB(255, 3, 103, 185),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Delivered",
                          style: TextStyle(color: lightGrey2, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(
                color: lightGrey3,
                thickness: 0.8,
              ),
//receipt started
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 ITEM',
                    style: TextStyle(fontSize: 15, color: lightGrey2),
                  ),
                  Container(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.receipt_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 3, 103, 185),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "RECEIPT",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 103, 185),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

//third section photo section
              SizedBox(
                height: 15,
              ),

              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(35), // Image radius
                        child: Card(
                          ////////////////
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          ////////////////
                          child: Image.asset('assets/images/tshirt2.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Explore | Men | Navy Blue',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '1 piece',
                          style: TextStyle(color: lightGrey2),
                        ),
                        Text(
                          'Size: XL',
                          style: TextStyle(color: lightGrey2),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        ///----------------------------------
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 234, 243),
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 5, 133, 238))),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(7, 2, 7, 2),
                                child: Text('1'),
                              ),
                            ),
                            const Text(
                              '  x ₹799',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 155,
                            ),
                            const Text(
                              '   ₹799',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
//third section end
              SizedBox(
                height: 10,
              ),
              Divider(
                color: lightGrey3,
                thickness: 0.8,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Item Total'),
                  Text(
                    '₹799',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Delivery'),
                  Text(
                    'FREE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 236, 3),
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text('₹799',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 17)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: lightGrey3,
                thickness: 0.8,
              ),
              //fourth section end
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'CUSTOMER DETAILS',
                    style: TextStyle(fontSize: 14, color: lightGrey2),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.share_outlined,
                        size: 20,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'SHARE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
//customer details section ended
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deepa',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '+91-7829000484',
                        style: TextStyle(fontSize: 14, color: lightGrey2),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.blue[800],
                          size: 27,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.whatsapp,
                          color: Color.fromARGB(255, 3, 236, 3),
                          size: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
//name section ended
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text('D 1101 Charatered Beverly',
                          style: TextStyle(fontSize: 14, color: lightGrey2)),
                      Text('Hills ,Subramanyapura P.O',
                          style: TextStyle(fontSize: 14, color: lightGrey2)),
                    ],
                  ),
                ],
              ),
//address ended
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('City',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Bangalore',
                        style: TextStyle(fontSize: 14, color: lightGrey2),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pincode',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '560061',
                        style: TextStyle(fontSize: 14, color: lightGrey2),
                      ),
                    ],
                  ),
                  Column(
                    children: const [],
                  )
                ],
              ),
              //city ended
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Text('Online',
                          style: TextStyle(fontSize: 14, color: lightGrey2)),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 220, 242, 225),
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                            color: Color.fromARGB(255, 140, 226, 118))),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(7, 2, 7, 2),
                      child: Text(
                        'PAID',
                        style: TextStyle(
                            color: Color.fromARGB(255, 37, 180, 39),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
//additional information started
              Divider(
                color: lightGrey3,
                thickness: 0.8,
              ),
              SizedBox(
                height: 10,
              ),
              Text('ADDITIONAL INFORMATION',
                  style: TextStyle(fontSize: 14, color: lightGrey2)),
              SizedBox(
                height: 20,
              ),
              Text('State',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text('Karnataka',
                  style: TextStyle(fontSize: 14, color: lightGrey2)),
              SizedBox(
                height: 20,
              ),
              Text('Email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text('greeniceaqua@gmail.com',
                  style: TextStyle(fontSize: 14, color: lightGrey2)),
              SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {},
                // ignore: sort_child_properties_last
                child: Text(
                  'Share receipt',
                  style: TextStyle(color: Color.fromARGB(255, 0, 81, 173)),
                ),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  side: BorderSide(
                    color: Color.fromARGB(255, 0, 81, 173),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
