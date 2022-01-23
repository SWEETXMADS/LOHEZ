
import 'package:flutter/material.dart';

class Horizontallist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:<Widget> [
          category(image_location: 'images/6-2-best-seller-png-clipart.png' , image_caption: '  BEST SELLER'),
          category(image_location: 'images/pngwing.com-5.png', image_caption: 'FAVOURITES'),
          category(image_location: 'images/pngwing.com-4.png', image_caption: 'SPECIALS'),
          category(image_location: 'images/pngwing.com-3.png', image_caption: 'SALE!!!'),
          category(image_location: 'images/5142.jpg', image_caption: 'PREMIUM')
        ],
      ),

    );
  }
}
class category extends StatelessWidget {
final String image_location;
final String image_caption;

category({required this.image_location,required this.image_caption});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 150.0,
          height: 150,
          child: ListTile(
            title: Image.asset(image_location,width: 100,height: 80,),
            subtitle: Container(
              height: 20,
                width: 100,
                child: Text(image_caption,)),
          ),
        ),
      ),
    );
  }
}
