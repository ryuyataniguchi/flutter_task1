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
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SizedBox(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:
                  Image.asset('images/zusi.jpeg'),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.share),color: Colors.black,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border),color: Colors.black,),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 150,
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
              top: 170,
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
              top: 200,
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
      ),
    );
  }
}