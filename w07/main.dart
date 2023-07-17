import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Warathep Tanyaruk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '6414421016',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );

    Widget textSection = Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        'นายวราเทพ คนนี้เป็นคนที่หล่อรวยแถวยังใจบุญ '
        'มีความสัมพันธ์กับคนอื่นที่ดี และเพื่อนๆที่ดี '
        'มีแฟนที่น่ารักและความสัมพันธ์ที่ดี และรักกันอย่างมั่นคง '
        'เป็นคนที่เก่ง ในหลายๆด้าน กีฬา,เรียน,ความมั่นคง,สุขภาพ '
        'ขอบคุณ   ขอบคุณ   ขอบคุณ ',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Work_w_07'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://scontent.fbkk5-5.fna.fbcdn.net/v/t39.30808-6/360085407_1316940218902287_1571891553420589911_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFg584YoT-JRJO3bv2JmWlAHnXRmq6BL04eddGaroEvTuvzGvgakH1r_f75HCLCHAqoj7SQ7GWGBlJrljcfbUcu&_nc_ohc=MsZnTS4ZPSwAX-7mNOh&_nc_ht=scontent.fbkk5-5.fna&oh=00_AfAexCuJvD-eVuMBUq1NmgWZKo77gXsIS1FcH5KI7c4IEw&oe=64B92C95',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              ('https://scontent.fbkk5-3.fna.fbcdn.net/v/t39.30808-6/347438607_1316437352285907_4105216407990252233_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeH2T6q3Cyjo1dVHTowZYpplML8muF7ttNIwvya4Xu200p5S8lnNd11MVIhuGF2pMFOwzPvvLMDkyD4Mv-HwVtJ1&_nc_ohc=R6_hBK1RyGMAX8s7z4i&_nc_ht=scontent.fbkk5-3.fna&oh=00_AfBNcDNwf06uLdjcpR-8e0PG3AdeHXyv4WxLfxyKmmHe2A&oe=64B960C1'),
              width: 400,
              height: 400,
            ),
            const Text(
              'Warathep Tanyaruk',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GridListScreen()),
                );
              },
              child: const Text('Open Grid List'),
            ),
          ],
        ),
      ),
    );
  }
}

class GridListScreen extends StatelessWidget {
  const GridListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://th.bing.com/th/id/OIP.vxJWZoK_nGhw2L5tdQ7wgwHaHa?pid=ImgDet&w=750&h=750&rs=1${index + 1}.jpg',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Cute ${index + 1}',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
