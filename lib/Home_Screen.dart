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
            iconSize: 30, // Uygun bir iconSize değeri
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
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
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
                  ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                width: 360,
                height: 154,
                decoration: BoxDecoration(color: Color(0xFFFFE0B7)),
              ),
              Positioned(
                top: 50, // Text'in yüksekliğini ayarlayabilirsiniz
                left: 20, // Text'in sol boşluğunu ayarlayabilirsiniz
                child: Text(
                  'MIN 15%',
                  style: TextStyle(
                    color: Color(0xFF3E1304),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.05,
                    letterSpacing: 2.88,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

String getImagePath(int index) {
  // index değerine göre resim dosya adını döndür
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
      return 'assets/Vector.png'; // Varsayılan bir resim dosya adı
  }
}

String getTextContent(int index) {
  // index değerine göre text içeriğini döndür
  switch (index % 5) {
    case 0:
      return 'Fashion';
    case 1:
      return 'Electronic';
    case 2:
      return 'Apliances';
    case 3:
      return 'Beauty';
    default:
      return 'Fashion'; // Varsayılan bir metin içeriği
  }
}
