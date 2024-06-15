import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formatted = DateFormat('d MMM y').format(now);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Facebook', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue[300],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.video_collection),
                    Icon(Icons.person),
                    Icon(Icons.notifications),
                    Icon(Icons.menu)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Stack(children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.0),
                      ),
                      child: Image.network(
                          'https://lh3.googleusercontent.com/d_S5gxu_S1P6NR1gXeMthZeBzkrQMHdI5uvXrpn3nfJuXpCjlqhLQKH_hbOxTHxFhp5WugVOEcl4WDrv9rmKBDOMExhKU5KmmLFQVg'),
                    ),
                    const Positioned(
                      top: 100,
                      left: 15,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://static-00.iconduck.com/assets.00/flutter-icon-512x512-k9y8x41t.png'),
                        radius: 100,
                      ),
                    )
                  ]),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Yashraj Maurya',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Text(
                      '(Raj Maurya)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        '86',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'friends',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll<Color>(Colors.blue)),
                        child: const Text(
                          '+ Add to story',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Edit Profile')),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('...')),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        'Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Studied at Indus University (Gujarat)',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Lives in Ahmedabad, India',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'From Ahmedabad, India',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'See your About info',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Edit public details')),
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 20),
                      child: Text(
                        'Friends',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, bottom: 10),
                      child: Text(
                        '86 friends',
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            'https://getdrawings.com/free-icon/profile-image-icon-75.png'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            'https://getdrawings.com/free-icon/profile-image-icon-75.png'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            'https://getdrawings.com/free-icon/profile-image-icon-75.png'),
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text(
                        'Neel Chatrala',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text(
                        'Divya Mistry',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text(
                        'Nikhil',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, right: 340),
                  child: Text(
                    'Posts',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://getdrawings.com/free-icon/profile-image-icon-75.png'),
                          ),
                          title: const Text(
                            'Yashraj Maurya updated his cover photo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(formatted),
                          trailing: Icon(Platform.isAndroid
                              ? Icons.more_vert
                              : Icons.more_horiz)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2.0),
                        ),
                        child: Image.network(
                            'https://lh3.googleusercontent.com/d_S5gxu_S1P6NR1gXeMthZeBzkrQMHdI5uvXrpn3nfJuXpCjlqhLQKH_hbOxTHxFhp5WugVOEcl4WDrv9rmKBDOMExhKU5KmmLFQVg'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.thumb_up),
                          Text(
                            'Like',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Icon(Icons.comment),
                          Text(
                            'Comment',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Icon(Icons.share),
                          Text(
                            'Share',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://getdrawings.com/free-icon/profile-image-icon-75.png'),
                          ),
                          title: const Text(
                            'Yashraj Maurya updated his profile photo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(formatted),
                          trailing: Icon(Platform.isAndroid
                              ? Icons.more_vert
                              : Icons.more_horiz)),
                    ),
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://static-00.iconduck.com/assets.00/flutter-icon-512x512-k9y8x41t.png'),
                      radius: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.thumb_up),
                          Text(
                            'Like',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Icon(Icons.comment),
                          Text(
                            'Comment',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Icon(Icons.share),
                          Text(
                            'Share',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
