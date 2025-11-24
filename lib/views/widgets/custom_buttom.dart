import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap , this.isLoading = false});
  final VoidCallback onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: 
          
          isLoading ? const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          ) :const Text("Add",style: TextStyle(
         color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}