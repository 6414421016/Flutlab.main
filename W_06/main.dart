import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

    //ส่วนตรงกลาง หัวข้อ
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

          //ส่วนไอคอนรูปดาว
          const FavoriteWidget(),
        ],
      ),
    );

    //ส่วนของปุ่ม
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
        _buildButtonColumn(color, Icons.home, 'HOME'),
      ],
    );

    //ส่วนของข้อความ
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

    //ส่วน Head หัวบนสุด
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Work_w_06'),
        ),
        body: ListView(
          children: [
            Image.network(
              'https://scontent.fbkk5-3.fna.fbcdn.net/v/t39.30808-6/347438607_1316437352285907_4105216407990252233_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeH2T6q3Cyjo1dVHTowZYpplML8muF7ttNIwvya4Xu200p5S8lnNd11MVIhuGF2pMFOwzPvvLMDkyD4Mv-HwVtJ1&_nc_ohc=B9_vS-iVGLUAX8PnchQ&_nc_ht=scontent.fbkk5-3.fna&oh=00_AfBG_T1iAwkOUFZuHJv-tHCR1agi0qVrEdojahZpEoTTKA&oe=64B177C1',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
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
