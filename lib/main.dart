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
                        '????????????',
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
                        '????????????',
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
            //???????????????
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
                      tooltip: '????????????',
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    '????????????',
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
                      tooltip: '?????????',
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    '?????????',
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
                      tooltip: '?????????',
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                      '?????????',
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
              '??????',
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
              '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????'
                  '????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????'
                  '???????????????????????????????????????????????????????????????'''
                  '????????????????????????????????????????????????????????????????????????????????????850m?????????????????????600m???????????????????????????????????????????????????????????????????????????????????????'
                  '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
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
        label: const Text ('????????????????????????'),
      ),
    );
  }
}