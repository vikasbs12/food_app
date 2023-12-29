import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';
import 'package:google_fonts/google_fonts.dart';
class FoodTile extends StatelessWidget {
  final Food food;
  
  const FoodTile({super.key,required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25.0),
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Image.asset(food.imagePath,
          height: 140,),

          Text(food.name,
          style: GoogleFonts.dmSerifDisplay(

            fontSize: 20
          ),),

          SizedBox(
            width: 160,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("\$" + food.price,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                  ],
                ),
                Icon(Icons.star,color: Colors.yellow[800],),
                Text(food.rating,
                style: TextStyle(color: Colors.grey),),

              ],
            ),
          )
        ],
      ),
    );
  }
}