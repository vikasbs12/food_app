import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text; // Add a variable to hold the text
  final void Function()? onTap;
  const MyButton({Key? key, required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 92, 179, 170),
          borderRadius: BorderRadius.circular(40)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white, // You can customize the text color
                ),
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.arrow_forward,
              color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
