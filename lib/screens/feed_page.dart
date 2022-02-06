import 'package:flutter/material.dart';

List<String> imgList = [
  'https://images.pexels.com/photos/774731/pexels-photo-774731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/1543793/pexels-photo-1543793.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/156934/pexels-photo-156934.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/2643812/pexels-photo-2643812.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/1120049/pexels-photo-1120049.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/2817421/pexels-photo-2817421.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
];

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: imgList.length,
        itemBuilder: (context, index) => Container(
          child: Image.network(imgList[index]),
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.blue[400],
          thickness: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_a_photo_outlined),
        onPressed: () {},
      ),
    );
  }
}
