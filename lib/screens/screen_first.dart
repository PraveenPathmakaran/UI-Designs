import 'package:designs/screens/screen_second.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenFirst extends StatelessWidget {
  ScreenFirst({Key? key}) : super(key: key);
  List<Widget> iconss = const [
    Icon(Icons.share_outlined),
    Icon(Icons.chat_bubble_outline),
    Icon(Icons.whatsapp_outlined),
    Icon(Icons.lock_outline),
    Icon(Icons.star_border),
    Icon(Icons.exit_to_app),
  ];
  List<Widget> titles = const [
    Text('Share Dukaan App'),
    Text('Change Language'),
    Text('WhatsApp Chat Support'),
    Text('Privacy Policy'),
    Text('Rate Us'),
    Text('Sign Out'),
  ];
  List<Widget> trailings = [
    const Icon(Icons.keyboard_arrow_right),
    const Icon(Icons.keyboard_arrow_right),
    Switch(value: true, onChanged: (_) {}),
    const Text(''),
    const Text(''),
    const Text(''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Additional Information'),
        backgroundColor: Colors.blue[800],
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return ScreenSecond();
                }),
              );
            },
            icon: const Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: iconss.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: iconss[index],
                title: titles[index],
                trailing: trailings[index],
              );
            },
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text('Vesrion', style: TextStyle(color: Colors.grey)),
                  const SizedBox(
                    height: 1,
                  ),
                  Text('2.4.2',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
