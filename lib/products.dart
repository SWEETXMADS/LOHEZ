import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class products extends StatefulWidget {
  const products({Key? key}) : super(key: key);

  @override
  _productsState createState() => _productsState();
}

class _productsState extends State<products> {
  var prod_list = [
    {
      "name": "dress",
      "image": "images/prod6.jpeg",
      "old_price": 3000,
      "price": 2100
    },
    {
      "name": "saree",
      "image": "images/prod2.jpeg",
      "old_price": 3000,
      "price": 2100
    },
    {
      "name": "dress",
      "image": "images/prod3.jpeg",
      "old_price": 3000,
      "price": 2100
    },
    {
      "name": "dress",
      "image": "images/prod1.jpeg",
      "old_price": 3000,
      "price": 2100
    },
    {
      "name": "dress",
      "image": "images/prod4.jpeg",
      "old_price": 3000,
      "price": 2100
    },
    {
      "name": "dress",
      "image": "images/prod5.jpeg",
      "old_price": 3000,
      "price": 2100
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: prod_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext, int index) {
          return single_prod(
            prod_name: prod_list[index]['name'],
            prod_image: prod_list[index]['image'],
            prod_oldprice: prod_list[index]['old_price'],
            prod_price: prod_list[index]['price'],
          );
        });
  }
}

class single_prod extends StatelessWidget {
  final prod_name;
  final prod_image;
  final prod_oldprice;
  final prod_price;

  single_prod(
      {this.prod_name, this.prod_image, this.prod_oldprice, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: (){},
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(prod_name, style: GoogleFonts.galada() ),
                  ),
                ),
                child: Image.asset(prod_image,
                fit: BoxFit.cover,
                ) ,

                ),
              ),
            ),
          ),
        ),
      );
  }
}
