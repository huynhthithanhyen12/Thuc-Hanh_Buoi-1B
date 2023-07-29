import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}
class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TuanRio33'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: 390,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Thanh Yến 08TTMT',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              buildRowLayout(),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Image.network(
                    'https://img6.thuthuatphanmem.vn/uploads/2022/11/17/anh-che-hai-huoc-nhat-meme-gau-truc_034015982.jpg',
                    width: 200,
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://catscanman.net/wp-content/uploads/2023/02/meme-che-1.jpg',
                    width: 200,
                  ),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Quần què nè!')),
                  );
                },
                child: Text('Click!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.yellow,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.black,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      )
    ],
  );
}