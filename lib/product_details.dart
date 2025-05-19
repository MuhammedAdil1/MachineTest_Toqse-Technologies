import 'package:flutter/material.dart';
import 'package:product_details/widgets/build_elevatedbutton_widget.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'PRODUCT DETAILS',
          style: TextStyle(
              color: Colors.red, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/sneakers.jpeg',
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildElevatedButtonWidget(
                      text: 'ADD TO CART',
                      fontSize: 16,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      onPressed: () {}),
                  SizedBox(width: 15),
                  BuildElevatedButtonWidget(
                      text: '  BUY NOW  ',
                      fontSize: 16,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      onPressed: () {}),
                ],
              ),
              Divider(),

              SizedBox(height: 15),
              Text(
                'Weinbrenner TOWSON High-Cut Outdoor Sneaker',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star,color:  Color(0xffffa534)),
                  Icon(Icons.star,color:  Color(0xffffa534)),
                  Icon(Icons.star,color:  Color(0xffffa534)),
                  Icon(Icons.star,color:  Color(0xffffa534)),
                  Icon(Icons.star,color:  Color(0xffffa534)),
                  SizedBox(width: 10),

                  Text('5.00',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),

                  Text('1 Ratings',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 15),
              BuildElevatedButtonWidget(
                  text: 'RATE THE PRODUCT',
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  fontSize: 16,
                  onPressed: () {}),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Brand:',
                    style: TextStyle(fontSize: 16),
                  ),
                 SizedBox(width: 80,),
                  Text(
                    'Weinbrenner',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 50,),

                  Text(
                    'Quantity',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Text(
                'Product Code: 8214944',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Availability: In stock',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('Price:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(width: 16,),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      children: [
                        TextSpan(
                            text: 'Tk 3,999.00 ',
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough)),
                        TextSpan(
                            text: ' Tk 2,999.00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Row(
              //   children: [
              //
              //   ],
              // ),
              Text(
                'PRODUCT DETAILS This lace-up, high-top urban sneaker provides the required protection and support for long days and ...',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
