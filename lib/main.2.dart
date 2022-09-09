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
              Image.asset('images/zusi.jpeg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.share),color: Colors.black,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border),color: Colors.black,),
                ],
              )
            ],
          ),
          Row(
            //均等ならべ
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.wifi),
                tooltip: 'Wi-Fi',
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.restaurant),
                tooltip: 'キッチン',
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.beach_access_outlined),
                tooltip: 'ビーチ',
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                tooltip: 'その他',
                onPressed: () {},
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              '詳細',
              style: TextStyle(fontSize: 20,),
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