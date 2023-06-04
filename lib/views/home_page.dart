import 'package:flutter/material.dart';
import '../views/category_terbaru.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("images/logo_cnn_fav.png"),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 30,
                      margin: EdgeInsets.only(top: 100),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryTerbaru(),
                            ),
                          );
                        },
                        child: Text("TERBARU"),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 30,
                      margin: EdgeInsets.only(left: 20, top: 100),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("NASIONAL"),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 30,
                      margin: EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("OLAHRAGA"),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 30,
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("TEKNOLOGI"),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
