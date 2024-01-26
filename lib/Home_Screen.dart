import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            iconSize: 10,
            onPressed: () {},
            icon: Image.asset('assets/notification.png'),
          ),
          IconButton(onPressed: () {}, icon: Image.asset('assets/bag-2.png')),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Search Anything...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(color: Color(0xFFD1D5DB))
                    // suffixIcon: Icon(Icons.clear),
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: Color(0xFF111827),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    height: 0.01,
                    letterSpacing: 0.52,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
