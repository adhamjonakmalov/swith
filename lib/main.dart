import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool a = false;
  void f(s) {
    setState(() {
      a = s;
    });
  }

  bool a1 = false;

  void f1(s1) {
    setState(() {
      a1 = s1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Connected desices',
            style: TextStyle(color: Colors.blue),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          actions: [
            Icon(
              Icons.search_outlined,
              color: Colors.blue,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 70,
              color: a == false ? Colors.blue : Colors.black,
              child: SwitchListTile(
                value: a,
                onChanged: f,
                title: Text(
                  'Bluetooth',
                  style: TextStyle(color: a == false ? Colors.black : Colors.blue),
                ),
                subtitle: Text(
                  'Not visible to other devices',
                  style: TextStyle(color: a == false ? Colors.black : Colors.blue),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: ListTile(
                title: Text('Cast'),
                subtitle: Text('Not connected'),
              ),
            ),
            Container(
              color: a1 == false ? Colors.blue : Colors.black,
              width: double.infinity,
              height: 70,
              child: SwitchListTile(
                value: a1,
                onChanged: f1,
                title: Text(
                  'NFC',
                  style: TextStyle(color: a1 == false ? Colors.black : Colors.blue),
                ),
                subtitle: Text(
                  'Allow data exchange when the phone touches another device',
                  style: TextStyle(color: a1 == false ? Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 14, 6, 240)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: ListTile(
                title: Text(
                  'Android Beam',
                  style: TextStyle(color: Color.fromARGB(255, 67, 67, 67)),
                ),
                subtitle: Text('Unavailable because NFS is turned off'),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: ListTile(
                title: Text('USB'),
                subtitle: Text('Not connected'),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: ListTile(
                title: Text('Printing'),
                subtitle: Text('2print services on'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
