import 'package:carousel_slider/carousel_slider.dart';
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
            iconSize: 30,
            onPressed: () {},
            icon: Image.asset('assets/notification.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/bag-2.png'),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                'David Guetta',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                '+91-999999999',
                style: TextStyle(color: Color.fromARGB(255, 94, 90, 90)),
              ),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("assets/david.png"),
              ),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 223, 220, 220)),
            ),
            ListTile(
              leading: Icon(Icons.shop_2_sharp),
              title: const Text('Shop by Categories'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: const Text('Favourites'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              leading: Icon(Icons.timeline_sharp),
              title: const Text('FAQs'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              leading: Icon(Icons.add_moderator_rounded),
              title: const Text('Addresses'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              leading: Icon(Icons.save_alt_outlined),
              title: const Text('Saved Cards'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              leading: Icon(Icons.terminal_rounded),
              title: const Text('Terms & Conditions'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
            ListTile(
              leading: Icon(Icons.timeline_sharp),
              title: const Text('My Orders'),
              onTap: () {
                // Drawer içindeki öğeye tıklama işlemleri
              },
            ),
          ],
        ),
      ),
      body: Column(children: [
        SizedBox(height: 24),
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
                borderSide: BorderSide(color: Color(0xFFD1D5DB)),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
              ),
              Spacer(),
              Text(
                'View All ->',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF6B7280),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.12,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 7; i++)
                Column(
                  children: [
                    Image.asset(
                      getImagePath(i),
                      height: 65,
                    ),
                    Text(
                      getTextContent(i),
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
            ],
          ),
        ),
        SizedBox(height: 20),
        CarouselSlider(
          items: [
          
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/banner.png'),
                ),
              ),
            )
          ],
          options: CarouselOptions(height: 180, aspectRatio: 7 / 4, ),
        )
      ]),
    );
  }
}

String getImagePath(int index) {
  switch (index % 5) {
    case 0:
      return 'assets/Vector.png';
    case 1:
      return 'assets/Vector1.png';
    case 2:
      return 'assets/frame.png';
    case 3:
      return 'assets/frame1.png';
    default:
      return 'assets/Vector.png';
  }
}

String getTextContent(int index) {
  switch (index % 5) {
    case 0:
      return 'Fashion';
    case 1:
      return 'Electronic';
    case 2:
      return 'Appliances';
    case 3:
      return 'Beauty';
    default:
      return 'Fashion';
  }
}
