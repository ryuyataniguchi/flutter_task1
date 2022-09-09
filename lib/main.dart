import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task1',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                child: Container(
                  height: 380,
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:
                    Image.asset(
                        'images/zusi.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.share),color: Colors.white,),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border),color: Colors.white,),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                top: 200,
                child: Container(
                  child: Column(
                    children: const [
                      Text(
                        '逗子海岸',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 210,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.place,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        '神奈川県',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 230,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 22,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        size: 22,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        size: 22,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        size: 22,
                        color: Colors.white,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            //均等ならべ
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.wifi),
                      tooltip: 'Wi-Fi',
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    'wi-fi',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(
                      icon: Icon(Icons.restaurant),
                      tooltip: 'キッチン',
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    'キッチン',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(
                      icon: Icon(Icons.beach_access_outlined),
                      tooltip: 'ビーチ',
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    'ビーチ',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      tooltip: 'その他',
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                      'その他',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              '詳細',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: const Text(
              '逗子海岸は、遠浅で波が静かな海ということもあり、子供と一緒に楽しむにはピッタリの海水浴場です。'
                  'また、タトゥーの露出禁止、スピーカーなどを使い大きな音で音楽を流すことが禁止されていて、ファミリーで安心して過ごせる環境が整っています。'
                  'もちろん、海辺での喫煙も禁止されています。'''
                  '「ハーフマイルビーチ」と呼ばれる逗子海岸の長さは、全長約850m（遊泳区域は約600m）。海水浴シーズン以外でも浜辺散歩を楽しむには絶好の場所。'
                  '晴れた日には、海の向こうに江の島や遠くの富士山までもが望めます。水平線の向こうに見える景色を楽しめるのも逗子海岸の魅力です。',
              style: TextStyle(
                color: Colors.black,
                height: 2,
                fontSize: 10,
                fontStyle: FontStyle.italic,
                letterSpacing: 3,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text ('ホテルを予約する'),
      ),
    );
  }
}