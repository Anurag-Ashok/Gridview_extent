import 'package:flutter/material.dart';

class extent extends StatefulWidget {
  const extent({super.key});

  @override
  State<extent> createState() => _extentState();
}

class _extentState extends State<extent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView.extent Sample")),
      body: Stack(
        children: [
          GridView.extent(
            maxCrossAxisExtent: 200,
            children: [
              _buildGridItem(1),
              _buildGridItem(2),
              _buildGridItem(3),
              _buildGridItem(4),
              _buildGridItem(5),
              _buildGridItem(6),
              _buildGridItem(7),
              _buildGridItem(8),
              _buildGridItem(9),
              _buildGridItem(10),
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildGridItem(int index) {
  return Container(
    margin: EdgeInsets.all(10),
    color: Colors.amber,
    alignment: Alignment.center,
    child: Text(
      "$index",
      style: TextStyle(color: Colors.black, fontSize: 39),
    ),
  );
}
