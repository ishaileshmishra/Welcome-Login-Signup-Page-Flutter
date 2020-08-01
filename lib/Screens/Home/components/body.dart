import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/components/noon_looping_demo.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';

class Body extends StatefulWidget {
//  const Body({
//    Key key,
//  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> imgList = [
    'https://images.pexels.com/photos/3230267/pexels-photo-3230267.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/2092872/pexels-photo-2092872.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/3632705/pexels-photo-3632705.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/1100946/pexels-photo-1100946.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/2820887/pexels-photo-2820887.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/4834054/pexels-photo-4834054.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Text(
                "NEST PRODUCTS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              )),
          SizedBox(height: size.height * 0.03),
          ImageSliderDemo(imgList),
          SizedBox(height: size.height * 0.03),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(imgList.length, (index) {
                  return Container(
                    child: Card(
                        child: Image.network(imgList[index],
                            fit: BoxFit.cover, width: double.infinity)),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
