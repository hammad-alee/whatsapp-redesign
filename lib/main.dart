import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff25D366),
      ),
      home: const Home(),
      useInheritedMediaQuery: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff25D366),
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Row(
            children: [
              Container(
                width: 50,
                height: MediaQuery.of(context).size.height,
                color: Color(0xff25D366),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: const RotatedBox(
                        quarterTurns: 1,
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Chats',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'Group Chat',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'Status',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'Calls',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 38),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.whatsapp,
                                color: Color(0xff25D366),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Whatsapp',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff25D366)),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.green,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(41.0),
                              child: Image.network(
                                'https://d2kf8ptlxcina8.cloudfront.net/YH5TFCE1QY-preview.png',
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 18),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          fillColor: Colors.green.shade50,
                          labelText: "Search Users",
                          contentPadding: EdgeInsets.only(left: 8),
                          suffixIcon: Icon(Icons.search),
                          filled: true),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: const [
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg'),
                          ),
                          title: Text(
                            'Alive Rodririge',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'Hi, How are you?',
                            style: TextStyle(),
                          ),
                          trailing: Text(
                            'Yesterday',
                            style: TextStyle(),
                          ),
                        ),
                        Divider(
                          indent: 40,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/3760766/pexels-photo-3760766.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                          title: Text(
                            'Lillian Burgess',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'I\'m waiting.',
                            style: TextStyle(),
                          ),
                          trailing: Text(
                            'Yesterday',
                            style: TextStyle(),
                          ),
                        ),
                        Divider(
                          indent: 40,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/3760850/pexels-photo-3760850.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                          title: Text(
                            'Kristie Cole',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'QUADEEBO.',
                            style: TextStyle(),
                          ),
                          trailing: Text(
                            '02 Aug',
                            style: TextStyle(),
                          ),
                        ),
                        Divider(
                          indent: 40,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/6237921/pexels-photo-6237921.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                          title: Text(
                            'Bird Ramsey',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'Hi, Where are you.',
                            style: TextStyle(),
                          ),
                          trailing: Text(
                            '03 Aug',
                            style: TextStyle(),
                          ),
                        ),
                        Divider(
                          indent: 40,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/12154466/pexels-photo-12154466.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                          title: Text(
                            'Adam Smith',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'Can i call?',
                            style: TextStyle(),
                          ),
                          trailing: Text(
                            '03 Aug',
                            style: TextStyle(),
                          ),
                        ),
                        Divider(
                          indent: 40,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/12137911/pexels-photo-12137911.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                          title: Text(
                            'Marsh Mccall',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'I\'m waiting.',
                            style: TextStyle(),
                          ),
                          trailing: Text(
                            '04 Aug',
                            style: TextStyle(),
                          ),
                        ),
                        Divider(
                          indent: 40,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/10806979/pexels-photo-10806979.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                          title: Text(
                            'Leonor Cross',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'Reached at home.',
                            style: TextStyle(),
                          ),
                          trailing: Text(
                            '10 Jul',
                            style: TextStyle(),
                          ),
                        ),
                        Divider(
                          indent: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
