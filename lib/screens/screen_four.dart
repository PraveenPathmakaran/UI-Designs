// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable

import 'package:designs/screens/screen_five.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class ScreenFour extends StatelessWidget {
  ScreenFour({Key? key}) : super(key: key);
  final ScrollController _controller = ScrollController();
  final Color clr = Color.fromARGB(255, 109, 108, 108);

  @override
  Widget build(BuildContext context) {
    var size =
        MediaQuery.of(context).size; //total height and width of the device
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  //height of the container is is 45% of total height
                  height: size.height * .24,
                  decoration: BoxDecoration(color: Colors.blue[800]),
                ),
                SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                child: IconButton(
                                  color: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_back,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Container(
                                child: Text(
                                  'Dukaan Premium',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: ((context) {
                                        return ScreenFive();
                                      }),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(136, 36, 35, 35),
                                offset: Offset(0, 0.5),
                              ),
                            ],
                          ),
                          width: size.width,
                          height: size.height * .24,
//container content started
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Container(
                                  //dukaan row
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.blue[800],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.local_mall,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: const [
                                                  Text(
                                                    'dukaan',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 30),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'PREMIUM',
                                                style: TextStyle(
                                                    color: Colors.blue[800],
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],

                                            //icon with text ended
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Get Dukaan Premium for just',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  '4,999/year',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'All the advanced features for scaling your',
                                  style: TextStyle(color: clr),
                                ),
                                Text(
                                  'business',
                                  style: TextStyle(color: clr),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
//feature section
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Features',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    //list tile started

                    ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      controller: _controller,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          // visualDensity:
                          //     VisualDensity(horizontal: 0, vertical: 0),//this for content padding
                          contentPadding: EdgeInsets.zero,
                          isThreeLine: true,
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue,
                            child: CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.white,
                              child: iconss[index],
                            ),
                          ),
                          title: Text(
                            titlee[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            subtitle[index],
                            style: TextStyle(color: clr),
                          ),
                        );
                      },
                      itemCount: iconss.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox();
                      },
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 4,
            ),
            //listview completed
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 10, 18, 0),
              child: Text(
                'What is Dukaan Premium?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), //add border radius
                child: Image.asset(
                  "assets/images/dukaan.png",
                  height: size.height * .25,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 4,
            ),
            SizedBox(
              height: 10,
            ),
            //according started
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Frequently asked questions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            accordion('What types of business can use Dukaan Premium?'),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Divider(),
            ),

            accordion('What is your refund policy?'),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Divider(),
            ),
            accordion(
                'Will there be an automatic charge after the paid trial?'),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Divider(),
            ),
            accordion('What payments methods do you offer?'),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Divider(),
            ),
            accordion('What happens when my free trial ends?'),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Divider(),
            ),
            accordion('What are the terms for the custom domain?'),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Divider(),
            ),
            Divider(
              thickness: 4,
            ),
            SizedBox(
              height: 10,
            ),
//need help section started
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Need help?Get in touch',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
//2 grid statred
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 223, 217, 217))
                        // ignore: prefer_const_literals_to_create_immutables
                        ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(58, 30, 58, 30),
                      child: Column(
                        children: [
                          Icon(
                            Icons.message_outlined,
                            size: 30,
                            color: clr,
                          ),
                          Text(
                            'Live Chat',
                            style: TextStyle(color: clr),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 223, 217, 217))
                        // ignore: prefer_const_literals_to_create_immutables
                        ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(58, 30, 58, 30),
                      child: Column(
                        children: [
                          Icon(
                            Icons.call_outlined,
                            size: 30,
                            color: clr,
                          ),
                          Text('Phone Call', style: TextStyle(color: clr)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(9, 6, 9, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: TextButton(
                      onPressed: () {},
                      // ignore: sort_child_properties_last
                      child: Text(
                        'Select Domain',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 220,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[800],
                      ),
                      onPressed: () {},
                      child: Text(
                        'Get Premium',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Icon> iconss = [
    Icon(
      Icons.language,
      size: 33,
    ),
    Icon(
      Icons.verified_outlined,
      size: 33,
    ),
    Icon(
      Icons.computer,
      size: 33,
    ),
    Icon(
      Icons.support_agent_outlined,
      size: 33,
    ),
  ];
  List<String> titlee = [
    'Custom domain name',
    'Verified seller badge',
    'Dukaan for PC',
    'Priority support'
  ];
  List<String> subtitle = [
    'Get your own custom domain and buld \n your brand on the internet.',
    'Get green verified badge under your \n store name and build trust',
    'Access all the exclusive premium \n features on Dukaan for PC.',
    'Get your questions resolved with our priority customer support'
  ];

  Widget accordion(String word) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: GFAccordion(
        titlePadding: EdgeInsets.all(0),
        contentPadding: EdgeInsets.all(0),
        collapsedTitleBackgroundColor: Colors.transparent,
        expandedTitleBackgroundColor: Colors.transparent,
        contentBackgroundColor: Colors.transparent,
        expandedIcon: Icon(
          Icons.minimize,
          color: clr,
        ),
        collapsedIcon: Icon(
          Icons.add,
          color: clr,
        ),
        title: word,
        content:
            "\nDukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand-anyone who wants to sell their products /services online Dukaan is the perfect platform for you",
      ),
    );
  }
}
