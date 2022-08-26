import 'package:designs/screens/screen_third.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenSecond extends StatelessWidget {
  ScreenSecond({Key? key}) : super(key: key);
  List<Color> containerColor = [
    Colors.orange,
    const Color.fromARGB(255, 117, 238, 121),
    Colors.orange,
    Colors.lightBlue,
    Colors.grey,
    Colors.purple,
    const Color.fromRGBO(245, 40, 145, 1),
  ];
  List<IconData> containerIcons = [
    Icons.volume_up,
    Icons.currency_rupee,
    Icons.discount_outlined,
    Icons.contact_phone_outlined,
    Icons.qr_code_scanner_outlined,
    Icons.money,
    Icons.format_align_left,
  ];
  List<String> firstText = [
    'Marketing',
    'Online',
    'Discount',
    'My',
    'Store QR',
    'Extra',
    'Order',
  ];
  List<String> secondText = [
    'Designs',
    'Payments',
    'Coupons',
    'Customers',
    'Code',
    'Charges',
    'Form'
  ];
  List<String> containerNew = ['', '', '', '', '', '', 'NEW'];
  List<Color> containerNew2 = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    const Color.fromARGB(255, 3, 196, 9),
  ];
  List<IconData> bottomIcons = [
    Icons.home,
    Icons.list,
    Icons.grid_view,
    Icons.library_books_rounded,
    Icons.person_outlined,
  ];
  List<String> bottomText = [
    'Home',
    'Orders',
    'Products',
    'Manage',
    'Account',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('Managae Store'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return ScreenThird();
                }),
              );
            },
            icon: const Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount: containerColor.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.7,
                  mainAxisSpacing: 8.5),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 6, left: 6),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: containerColor[index],
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 1, 3, 1),
                                    child: Center(
                                      widthFactor: 1.5,
                                      heightFactor: 1.5,
                                      child: Icon(
                                        containerIcons[index],
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                //New Button Container
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.elliptical(3, 3)),
                                    color: containerNew2[index],
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(7, 4, 7, 4),
                                    child: Text(
                                      containerNew[index],
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 8),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            firstText[index],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            secondText[index],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        currentIndex: 3,
        items: [
          BottomNavigationBarItem(
            label: bottomText[0],
            icon: Icon(
              bottomIcons[0],
            ),
          ),
          BottomNavigationBarItem(
            label: bottomText[1],
            icon: Icon(
              bottomIcons[1],
            ),
          ),
          BottomNavigationBarItem(
            label: bottomText[2],
            icon: Icon(
              bottomIcons[2],
            ),
          ),
          BottomNavigationBarItem(
            label: bottomText[3],
            icon: Icon(
              bottomIcons[3],
            ),
          ),
          BottomNavigationBarItem(
            label: bottomText[4],
            icon: Icon(
              bottomIcons[4],
            ),
          )
        ],
      ),
    );
  }
}
