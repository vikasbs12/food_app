import 'package:flutter/material.dart';
import 'package:food_app/components/button.dart';
import 'package:food_app/components/food_tile.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(name: 'masala dosa', price: '21.0', imagePath: 'lib/images/ss1.png', rating: '4.9'),
    Food(name: 'south meals', price: '22.0', imagePath: 'lib/images/ss2.png', rating: '5.9'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[200],
        ),
        title: Text(
          'Zomatoo',
          style: TextStyle(color: Colors.grey[200]),
        ),
      ),
     
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Container(
            
            decoration: BoxDecoration(color: primarycolor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 45),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                      text: 'Redeem',
                      onTap: () {
                        // Add the functionality you want when the button is tapped
                      },
                    ),
                  ],
                ),
                Image.asset(
                  'lib/images/ss2.png',
                  height: 100,
                )
              ],
            ),
          ),
          const SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'search here..',
              ),
            ),
          ),
          const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[200],
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                  food: foodMenu[index],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/images/ss3.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Text(
                          'North Meals',
                          style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '\$21.00',
                          style: TextStyle(color: Colors.grey[700]),
                        )
                      ],
                    ),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                      size: 29,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ], // Added missing bracket for the Column
      ),
    );
  }
}
